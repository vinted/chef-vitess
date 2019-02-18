require_relative 'base_artifact'

class Chef
  class Resource
    # Vtexplain artifact installation and configuration
    class VtexplainArtifact < BaseArtifact
      provides(:vtexplain_artifact)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtexplain'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtexplain')
    end
  end

  class Provider
    # Vtexplain artifact installation and configuration
    class VtexplainArtifact < BaseArtifact
      provides(:vtexplain_artifact)

      protected

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtexplain.tgz"

        install_vitess_binary(source_url: url, version: v)
      end
    end
  end
end
