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
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtctlclient.tgz"

        install_vitess_binary(source_url: url, version: v)
        super
      end
    end
  end
end
