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
      attribute(:args, kind_of: String, default: lazy { additional_args })
      attribute(:web_dir_cookbook, kind_of: String, default: 'vitess')
      attribute(:web_dir2_cookbook, kind_of: String, default: 'vitess')

      def additional_args
        args = to_args(node['vitess']['vtctld'])
        if install_web_dir?
          args += " -web_dir=#{vtctld_web_vtctld}"
        end

        if install_web_dir2?
          args += " -web_dir2=#{vtctld_web_vtctld2}"
        end
        args
      end

      def install_web_dir?
        node['vitess']['vtctld']['web_dir'].nil?
      end

      def install_web_dir2?
        node['vitess']['vtctld']['web_dir2'].nil?
      end

      def vtctld_web_vtctld
        @vtctld_web_vtctld ||= ::File.join(vtctld_web_dir, 'vtctld2')
      end

      def vtctld_web_vtctld2
        @vtctld_web_vtctld2 ||= ::File.join(vtctld_web_dir, 'vtctld')
      end

      def vtctld_web_dir
        @vtctld_web_dir ||= ::File.join(vtroot, 'web')
      end
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

      def install_web_directory
        return unless new_resource.install_web_dir? || new_resource.install_web_dir2?
        create_directories [
          new_resource.vtctld_web_dir,
        ]

        remote_directory new_resource.vtctld_web_vtctld2 do
          cookbook new_resource.web_dir_cookbook
          source 'web/vtctld'
          owner new_resource.user
          group new_resource.group
          files_owner new_resource.user
          files_group new_resource.group
          files_mode '0640'
          mode '0755'
          action :create
        end

        remote_directory new_resource.vtctld_web_vtctld do
          cookbook new_resource.web_dir2_cookbook
          source 'web/vtctld2'
          owner new_resource.user
          group new_resource.group
          files_owner new_resource.user
          files_group new_resource.group
          files_mode '0640'
          mode '0755'
          action :create
        end
      end

      def deriver_install
        v = new_resource.version
        url = "#{node['vitess']['artifacts']['base_url']}/#{v}/vtctld.tgz"

        install_vitess_binary(source_url: url, version: v)
        install_web_directory
        install_service
        start_service
      end
    end
  end
end
