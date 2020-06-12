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
      attribute(
        :vitess_user_shell,
        kind_of: String,
        default: '/bin/false'
      )
      attribute(
        :topo_global_root,
        kind_of: String,
        default: lazy { node['vitess']['topo_global_root'] }
      )
      attribute(
        :topo_global_server_address,
        kind_of: String,
        default: lazy { node['vitess']['topo_global_server_address'] }
      )
      attribute(
        :topo_implementation,
        kind_of: String,
        default: lazy { node['vitess']['topo_implementation'] }
      )
      attribute(
        :datadog_agent_host,
        kind_of: String,
        default: lazy { node['vitess']['datadog-agent-host'] }
      )
      attribute(
        :datadog_agent_port,
        kind_of: String,
        default: lazy { node['vitess']['datadog-agent-port'] }
      )

      attribute(:vtroot, kind_of: String, default: '/var/lib/vt')
      attribute(:vtdataroot, kind_of: String, default: '/var/lib/vtdataroot')
      # Default switch case: master_percona57
      # https://github.com/vitessio/vitess/blob/master/go/vt/mysqlctl/mysqld.go#L656
      attribute(:mysql_flavor, kind_of: String, default: 'master_percona57')
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
      attribute(:mycnf_cookbook, kind_of: String, default: 'vitess')
      attribute(:mycnf, kind_of: Hash, default: lazy { node['vitess']['mycnf'] })

      # Cookbook
      attribute(:init_dbsql_sql_postfix, kind_of: String, default: '')
      attribute(:init_dbsql_sql_cookbook, kind_of: String, default: 'vitess')
      attribute(:init_dbsql_sql_variables, kind_of: Hash, default: {})
    end
  end

  class Provider
    # Vitess base service provider should be derived
    class VitessBaseService < Chef::Provider
      include Poise

      def additional_args
        args = {
          'topo_global_root' => new_resource.topo_global_root,
          'topo_global_server_address' => new_resource.topo_global_server_address,
          'topo_implementation' => new_resource.topo_implementation,
        }
        args['datadog-agent-host'] = new_resource.datadog_agent_host if !new_resource.datadog_agent_host.nil?
        args['datadog-agent-port'] = new_resource.datadog_agent_port if !new_resource.datadog_agent_port.nil?
        args['log_dir'] = service_log_dir if new_resource.args['log_dir'].nil?
        args
      end

      def action_install
        converge_by("chef-vitess installing #{new_resource.name}") do
          notifying_block do
            validate!
            create_user
            set_user_ulimit
            create_directories [
              new_resource.vtroot,
              new_resource.vtdataroot,
              vt_bin_path,
              vt_config_path,
              mycnf_path,
              base_log_dir,
              service_log_dir
            ]
            deriver_install
          end
        end
      end

      protected

      def service_log_dir
        @service_log_dir ||= ::File.join(base_log_dir, new_resource.service_name)
      end

      def base_log_dir
        @base_log_dir ||= '/var/log/vitess'
      end

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
        @init_dbsql_path ||= "#{vt_config_path}/init_db#{new_resource.init_dbsql_sql_postfix}.sql"
      end

      def install_init_dbsql
        template init_dbsql_path do
          cookbook new_resource.init_dbsql_sql_cookbook
          variables new_resource.init_dbsql_sql_variables
          source 'sql/init_db.sql.erb'
          owner new_resource.user
          group new_resource.group
          mode '0640'
          sensitive true
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
          cookbook new_resource.mycnf_cookbook
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

      def vitess_release_hash
        @vitess_release_hash ||= {}
        @vitess_release_hash[new_resource.bin_name] ||= new_resource.version.split('-')[1]
      end

      def vitess_release_url
        node['vitess']['releases'][vitess_release_hash]['url']
      end

      def vitess_release_checksum
        node['vitess']['releases'][vitess_release_hash]['checksum']
      end

      def vitess_release_cache_path
        cache_path = Chef::Config[:file_cache_path]
        release_url = vitess_release_url
        archive_file_name = ::File.basename(release_url)
        archive_cache_path = ::File.join(cache_path, archive_file_name)
        archive_cache_path.gsub(/\.tar\.gz$/, '')
      end

      def cache_vitess_binary
        cache_path = Chef::Config[:file_cache_path]
        release_url = vitess_release_url
        release_checksum = vitess_release_checksum
        archive_file_name = ::File.basename(release_url)
        archive_cache_path = ::File.join(cache_path, archive_file_name)

        bash "extract vitess bin file #{archive_cache_path}" do
          cwd cache_path
          user 'root'
          code "tar -zxf #{archive_cache_path}"
          action :nothing
        end

        remote_file archive_cache_path do
          source release_url
          owner 'root'
          group 'root'
          mode '0640'
          checksum release_checksum
          notifies :run, "bash[extract vitess bin file #{archive_cache_path}]", :immediate
        end
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def install_vitess_binary
        bin_name_with_release = "#{new_resource.bin_name}-#{vitess_release_hash}"
        bin_path_with_release = ::File.join(new_resource.bin_path, bin_name_with_release)
        bin_source_path = ::File.join(vitess_release_cache_path, 'bin', new_resource.bin_name)

        cache_vitess_binary

        bash "copy #{bin_source_path} to #{bin_path_with_release}" do
          user 'root'
          code <<-CODE
            cp #{bin_source_path} #{bin_path_with_release} &&
            chown root:root #{bin_path_with_release} &&
            chmod 0755 #{bin_path_with_release}
          CODE
          creates bin_path_with_release
        end

        link ::File.join(new_resource.bin_path, new_resource.bin_name) do
          to bin_path_with_release
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
          .join(" \\\n ")
      end

      def vitess_environment
        {
          'VTROOT' => new_resource.vtroot,
          'VTDATAROOT' => new_resource.vtdataroot,
          'MYSQL_FLAVOR' => new_resource.mysql_flavor,
          'VT_MYSQL_ROOT' => new_resource.vt_mysql_root
        }
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def install_service
        cmd = "#{bin_location} \\\n #{service_args}"
        service_name = new_resource.service_name
        exec_start = ::File.join(vt_bin_path, "#{service_name}.sh")
        env = vitess_environment

        template exec_start do
          source 'bin/wrap.sh.erb'
          variables cmd: cmd
          owner new_resource.user
          group new_resource.group
          mode '0750'
          cookbook 'vitess'
        end

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
            environment env
          end
        end
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/AbcSize

      private

      def set_user_ulimit
        user_ulimit new_resource.user do
          filehandle_limit 100_000
        end
      end

      def create_user
        group new_resource.group do
          action :nothing
        end

        user new_resource.user do
          group new_resource.group
          shell new_resource.vitess_user_shell
          action :create
          notifies :create, "group[#{new_resource.group}]", :before
        end
      end
    end
  end
end
