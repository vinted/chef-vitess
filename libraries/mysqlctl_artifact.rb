require_relative 'base_artifact'

class Chef
  class Resource
    # Mysqlctl artifact installation and configuration
    class MysqlctlArtifact < BaseArtifact
      provides(:mysqlctl_artifact)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['mysqlctl'] }
      )

      attribute(:bin_name, kind_of: String, default: 'mysqlctl')
    end
  end

  class Provider
    # Mysqlctl artifact installation and configuration
    class MysqlctlArtifact < BaseArtifact
      provides(:mysqlctl_artifact)

      protected

      def deriver_install
        install_mycnf_config

        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/mysqlctl.tgz"

        install_vitess_binary(source_url: url, version: v)
        execute_command unless new_resource.command.empty?
      end
    end
  end
end
