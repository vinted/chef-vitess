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
      attribute(:args, kind_of: Hash, default: lazy { node['vitess']['mysqlctld'] })
    end
  end

  class Provider
    # Mysqlctld service installation and configuration
    class MysqlctldService < VitessBaseService
      provides(:mysqlctld_service)

      def action_delete
        service new_resource.service_name do
          action %i(stop disable)
        end
      end

      def additional_args
        args = {}
        args['init_db_sql_file'] = init_dbsql_path if args['init_db_sql_file'].nil?
        args
      end

      protected

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/AbcSize
      def deriver_install
        install_mycnf_config
        install_init_dbsql
        install_vitess_binary
        install_service
        start_service
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/AbcSize
    end
  end
end
