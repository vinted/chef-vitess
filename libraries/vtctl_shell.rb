require_relative 'base_shell'

class Chef
  class Resource
    # Vtctl shell installation and configuration
    class VtctlShell < BaseShell
      provides(:vtctl_shell)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtctl'] }
      )

      def bin_name
        'vtctl'
      end
    end
  end

  class Provider
    # Vtctl shell installation and configuration
    class VtctlShell < BaseShell
      provides(:vtctl_shell)

      protected

      def deriver_install
        install_vitess_binary
        super
      end
    end
  end
end
