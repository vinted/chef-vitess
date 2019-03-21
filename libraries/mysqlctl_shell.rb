require_relative 'base_shell'

class Chef
  class Resource
    # Mysqlctl shell installation and configuration
    class MysqlctlShell < BaseShell
      provides(:mysqlctl_shell)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['mysqlctl'] }
      )

      def bin_name
        'mysqlctl'
      end
    end
  end

  class Provider
    # Mysqlctl shell installation and configuration
    class MysqlctlShell < BaseShell
      provides(:mysqlctl_shell)

      protected

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/mysqlctl.tgz"

        install_vitess_binary(source_url: url, version: v)
        super
      end
    end
  end
end
