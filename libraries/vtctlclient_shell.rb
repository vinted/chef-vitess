require_relative 'base_shell'

class Chef
  class Resource
    # Vtctlclient shell installation and configuration
    class VtctlclientShell < BaseShell
      provides(:vtctlclient_shell)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtctlclient'] }
      )

      def bin_name
        'vtctlclient'
      end
    end
  end

  class Provider
    # Vtctlclient shell installation and configuration
    class VtctlclientShell < BaseShell
      provides(:vtctlclient_shell)

      protected

      def deriver_install
        install_vitess_binary
        super
      end
    end
  end
end
