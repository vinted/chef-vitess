require_relative 'base_service'

class Chef
  class Resource
    # Mysqlctld service installation and configuration
    class MysqlctldService < VitessBaseService
      provides(:mysqlctld_service)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['mysqlctld'] }
      )

      attribute(:bin_name, kind_of: String, default: 'mysqlctld')

      # mysql.cnf
      attribute(
        :mysqlctld_mycnf,
        kind_of: Hash,
        default: lazy { node['vitess']['mysqlctld_mycnf'] }
      )
      attribute(:mysqld_path, kind_of: String, default: '/usr/sbin/mysqld')
    end
  end

  class Provider
    # Mysqlctld service installation and configuration
    class MysqlctldService < VitessBaseService
      provides(:mysqlctld_service)

      def action_delete
        file bin_location do
          action :delete
        end
        service new_resource.service_name do
          action %i[stop disable]
        end
      end

      protected

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def deriver_install
        create_directories [mycnf_path]
        create_mycnf_config
        # Make mysqld available to vt/bin
        link ::File.join(vt_bin_path, 'mysqld') do
          to new_resource.mysqld_path
        end

        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/mysqlctld.tgz"

        install_vitess_binary(source_url: url, version: v)
        install_service

        service new_resource.service_name do
          supports(
            status: true,
            restart: true
          )
          action %i[enable start]
        end
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/AbcSize

      private

      def mycnf_path
        @mycnf_path ||= ::File.join(vt_config_path, 'mycnf')
      end

      def create_mycnf_config
        new_resource.mysqlctld_mycnf.each do |file, config|
          generate_mycnf(
            path: ::File.join(mycnf_path, "#{file}.cnf"),
            variables: config
          )
        end
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def install_service
        exec_start = "#{bin_location} #{to_args(node['vitess']['mysqlctld'])}"
        environment = {
          'VTROOT' => new_resource.vtroot,
          'VTDATAROOT' => new_resource.vtdataroot,
          'MYSQL_FLAVOR' => new_resource.mysql_flavor
        }

        systemd_service new_resource.service_name do
          unit do
            description "Chef managed #{new_resource.bin_name} service"
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
    end
  end
end
