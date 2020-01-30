require_relative 'base_service'

class Chef
  class Resource
    # Vtctld service installation and configuration
    class VtctldService < VitessBaseService
      provides(:vtctld_service)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtctld'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtctld')
      attribute(:args, kind_of: Hash, default: lazy { node['vitess']['vtctld'] })
    end
  end

  class Provider
    # Vtctld service installation and configuration
    class VtctldService < VitessBaseService
      provides(:vtctld_service)

      def action_delete
        service new_resource.service_name do
          action %i[stop disable]
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
