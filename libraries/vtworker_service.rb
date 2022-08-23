require_relative 'base_service'

class Chef
  class Resource
    # Vtworker service installation and configuration
    class VtworkerService < VitessBaseService
      provides(:vtworker_service)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtworker'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtworker')
      attribute(:args, kind_of: Hash, default: lazy { node['vitess']['vtworker'] })
    end
  end

  class Provider
    # Vtworker service installation and configuration
    class VtworkerService < VitessBaseService
      provides(:vtworker_service)

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
