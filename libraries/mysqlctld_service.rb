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
      attribute(:args, kind_of: String, default: lazy { to_args(node['vitess']['mysqlctld']) })
    end
  end

  class Provider
    # Mysqlctld service installation and configuration
    class MysqlctldService < VitessBaseService
      provides(:mysqlctld_service)

      def action_delete
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
        start_service
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
    end
  end
end
