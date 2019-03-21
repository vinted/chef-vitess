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
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtctl.tgz"

        install_vitess_binary(source_url: url, version: v)
        super
      end
    end
  end
end
