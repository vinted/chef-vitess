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
        install_vitess_binary
        super
      end
    end
  end
end
