require_relative 'base_artifact'

class Chef
  class Resource
    # Vtbench artifact installation and configuration
    class VtbenchArtifact < BaseArtifact
      provides(:vtbench_artifact)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtbench'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtbench')
    end
  end

  class Provider
    # Vtbench artifact installation and configuration
    class VtbenchArtifact < BaseArtifact
      provides(:vtbench_artifact)

      protected

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtbench.tgz"

        install_vitess_binary(source_url: url, version: v)
      end
    end
  end
end
