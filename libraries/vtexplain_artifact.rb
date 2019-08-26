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
        install_vitess_binary
        execute_command unless new_resource.command.empty?
      end
    end
  end
end
