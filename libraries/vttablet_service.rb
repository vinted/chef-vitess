require_relative 'base_service'

class Chef
  class Resource
    # Vttablet service installation and configuration
    class VttabletService < VitessBaseService
      provides(:vttablet_service)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vttablet'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vttablet')
      attribute(:args, kind_of: Hash, default: lazy { node['vitess']['vttablet'] })
    end
  end

  class Provider
    # Vttablet service installation and configuration
    class VttabletService < VitessBaseService
      provides(:vttablet_service)

      def action_delete
        service new_resource.service_name do
          action %i(stop disable)
        end
      end

      protected

      def deriver_install
        install_vitess_binary
        install_service
        start_service
      end
    end
  end
end
