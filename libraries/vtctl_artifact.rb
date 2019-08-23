require_relative 'base_artifact'

class Chef
  class Resource
    # Vtctl artifact installation and configuration
    class VtctlArtifact < BaseArtifact
      provides(:vtctl_artifact)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtctl'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtctl')
    end
  end

  class Provider
    # Vtctl artifact installation and configuration
    class VtctlArtifact < BaseArtifact
      provides(:vtctl_artifact)

      protected

      def deriver_install
        install_vitess_binary
        execute_command unless new_resource.command.empty?
      end
    end
  end
end
