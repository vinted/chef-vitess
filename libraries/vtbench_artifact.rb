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
        install_vitess_binary
        execute_command unless new_resource.command.empty?
      end
    end
  end
end
