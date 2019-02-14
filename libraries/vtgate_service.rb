require_relative 'base_service'

class Chef
  class Resource
    # Vtgate service installation and configuration
    class VtgateService < VitessBaseService
      provides(:vtgate_service)

      attribute(
        :version,
        kind_of: String,
        default: lazy { node['vitess']['version']['vtgate'] }
      )

      attribute(:bin_name, kind_of: String, default: 'vtgate')
      attribute(:args, kind_of: Hash, default: lazy { node['vitess']['vtgate'] })
    end
  end

  class Provider
    # Vtgate service installation and configuration
    class VtgateService < VitessBaseService

      provides(:vtgate_service)

      def action_delete
        service new_resource.service_name do
          action %i[stop disable]
        end
      end

      protected

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtgate.tgz"

        install_vitess_binary(source_url: url, version: v)
        install_service
        start_service
      end
    end
  end
end
