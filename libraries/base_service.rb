require 'poise'
require 'chef/resource'
require 'chef/provider'

class Chef
  class Resource
    # Vitess base service resource should be derived
    class VitessBaseService < Chef::Resource
      include Poise(container: true)

      actions(:install)

      attribute(
        :user,
        kind_of: String,
        default: lazy { node['vitess']['user'] }
      )
      attribute(
        :group,
        kind_of: String,
        default: lazy { node['vitess']['group'] }
      )
      attribute(
        :bin_path,
        kind_of: String,
        default: '/usr/local/bin'
      )
      attribute(
        :bin_name,
        kind_of: String,
        default: lazy { raise 'Not implemented' }
      )

      attribute(:vtroot, kind_of: String, default: '/var/lib/vt')
      attribute(:vtdataroot, kind_of: String, default: '/var/lib/vtdataroot')
      # Default switch case: master_mysql56
      # https://github.com/vitessio/vitess/blob/master/go/vt/mysqlctl/mysqld.go#L656
      attribute(:mysql_flavor, kind_of: String, default: 'master_mysql56')
      attribute(:vt_mysql_root, kind_of: String, default: '/')

      # Service
      attribute(:service_name, kind_of: String, default: lazy { bin_name })
      attribute(
        :service_unit_after,
        kind_of: Array,
        default: %w[network.target]
      )
      attribute(:service_timeout_sec, kind_of: Integer, default: 5)
      attribute(:service_restart, kind_of: String, default: 'on-failure')

      # MySQL
      attribute(:mycnf, kind_of: Hash, default: lazy { node['vitess']['mycnf'] })

      # Cookbook
      attribute(:init_dbsql_sql_cookbook, kind_of: String, default: 'vitess')
    end
  end

  class Provider
    # Vitess base service provider should be derived
    class VitessBaseService < Chef::Provider
      include Poise

      def additional_args
        {}
      end

      def action_install
        converge_by("chef-vitess installing #{new_resource.name}") do
          notifying_block do
            validate!
            create_user
            create_directories [
              new_resource.vtroot,
              new_resource.vtdataroot,
              vt_bin_path,
              vt_config_path,
              mycnf_path
            ]
            install_init_dbsql
            deriver_install
          end
        end
      end

      protected

      def mycnf_path
        @mycnf_path ||= ::File.join(vt_config_path, 'mycnf')
      end

      def install_mycnf_config
        new_resource.mycnf.each do |file, config|
          generate_mycnf(
            path: ::File.join(mycnf_path, "#{file}.cnf"),
            variables: config
          )
        end
      end

      def init_dbsql_path
        @init_dbsql_path ||= "#{vt_config_path}/init_db.sql"
      end

      def install_init_dbsql
        cookbook_file init_dbsql_path do
          cookbook new_resource.init_dbsql_sql_cookbook
          source 'init_db.sql'
          owner new_resource.user
          group new_resource.group
          mode '0640'
          action :create
        end
      end

      def vt_bin_path
        @vt_bin_path ||= ::File.join(new_resource.vtroot, 'bin')
      end

      def vt_config_path
        @vt_config_path ||= ::File.join(new_resource.vtroot, 'config')
      end

      def create_directories(dirs)
        Array(dirs).each do |dir|
          directory dir do
            owner new_resource.user
            group new_resource.group
            mode '0750'
          end
        end
      end

      def generate_mycnf(path:, variables:)
        template path do
          source 'mycnf/generic.cnf.erb'
          variables variables: variables
          owner new_resource.user
          group new_resource.group
          mode '0640'
          cookbook 'vitess'
        end
      end

      def deriver_install
        raise 'Not implemented'
      end

      def validate!
        platform_supported?
      end

      def platform_supported?
        platform = node['platform']
        return if %w[redhat centos debian ubuntu].include?(platform)
        raise "Platform #{platform} is not supported"
      end

      def bin_location
        @bin_location ||= ::File.join(
          new_resource.bin_path,
          new_resource.bin_name
        )
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def install_vitess_binary(source_url:, version:)
        cache_path = Chef::Config[:file_cache_path]
        bin_name_with_version = "#{version}-#{new_resource.bin_name}"
        loc = bin_location

        bash 'extract_vitess_file' do
          cwd cache_path
          user 'root'
          code <<-CODE
            tar -zxf #{bin_name_with_version} -C #{new_resource.bin_path} &&
            chown root:root #{loc} &&
            chmod 0755 #{loc}
          CODE
          action :nothing
        end

        vitess_bin_file = ::File.join(cache_path, bin_name_with_version)

        remote_file vitess_bin_file do
          source source_url
          owner 'root'
          group 'root'
          mode '0640'
          notifies :run, 'bash[extract_vitess_file]', :immediate
          not_if { ::File.exist?(vitess_bin_file) }
        end
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/AbcSize

      def start_service
        service new_resource.service_name do
          supports(
            status: true,
            restart: true
          )
          action %i[enable start]
        end
      end

      def service_args(args = new_resource.args)
        args
          .merge(additional_args)
          .reject { |_k, v| v.nil? }
          .map { |k, v| "-#{k}=#{v}" }
          .join(' ')
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def install_service
        cmd = "#{bin_location} #{service_args}"
        service_name = new_resource.service_name
        exec_start = ::File.join(vt_bin_path, "#{service_name}.sh")

        template exec_start do
          source 'bin/wrap.sh.erb'
          variables cmd: cmd
          owner new_resource.user
          group new_resource.group
          mode '0750'
          cookbook 'vitess'
        end

        environment = {
          'VTROOT' => new_resource.vtroot,
          'VTDATAROOT' => new_resource.vtdataroot,
          'MYSQL_FLAVOR' => new_resource.mysql_flavor,
          'VT_MYSQL_ROOT' => new_resource.vt_mysql_root
        }

        systemd_service service_name do
          unit do
            description "Chef managed #{service_name} service"
            after Array(new_resource.service_unit_after).join(' ')
          end

          install do
            wanted_by 'multi-user.target'
          end

          service do
            type 'simple'
            exec_start exec_start
            restart new_resource.service_restart
            timeout_sec new_resource.service_timeout_sec
            user new_resource.user
            group new_resource.group
            environment environment
          end
        end
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/AbcSize

      private

      def create_user
        group new_resource.group do
          action :nothing
        end

        user new_resource.user do
          group new_resource.group
          shell '/bin/false'
          action :create
          notifies :create, "group[#{new_resource.group}]", :before
        end
      end
    end
  end
end
