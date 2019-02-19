require_relative 'base_artifact'

class Chef
  class Resource
    # Vtctlclient artifact installation and configuration
    class VtctlclientArtifact < BaseArtifact
      provides(:vtctlclient_artifact)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtctlclient'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtctlclient')
    end
  end

  class Provider
    # Vtctlclient artifact installation and configuration
    class VtctlclientArtifact < BaseArtifact
      provides(:vtctlclient_artifact)

      protected

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtctlclient.tgz"

        install_vitess_binary(source_url: url, version: v)
        execute_command unless new_resource.command.empty?
      end
    end
  end
end
