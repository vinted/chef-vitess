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
      attribute(:web_dir_cookbook, kind_of: String, default: 'vitess')
      attribute(:web_dir2_cookbook, kind_of: String, default: 'vitess')
    end
  end

  class Provider
    # Vtctld service installation and configuration
    class VtctldService < VitessBaseService
      provides(:vtctld_service)

      def additional_args
        args = {}
        args['web_dir'] = vtctld_web_vtctld if install_web_dir?
        args['web_dir2'] = "#{vtctld_web_vtctld2}/app" if install_web_dir2?
        args
      end

      def install_web_dir?
        new_resource.args['web_dir'].nil?
      end

      def install_web_dir2?
        new_resource.args['web_dir2'].nil?
      end

      def vtctld_web_vtctld
        @vtctld_web_vtctld ||= ::File.join(vtctld_web_dir, 'vtctld')
      end

      def vtctld_web_vtctld2
        @vtctld_web_vtctld2 ||= ::File.join(vtctld_web_dir, 'vtctld2')
      end

      def vtctld_web_dir
        @vtctld_web_dir ||= ::File.join(new_resource.vtroot, 'web')
      end

      def action_delete
        service new_resource.service_name do
          action %i[stop disable]
        end
      end

      protected

      def install_web_directory
        return unless install_web_dir? || new_resource.install_web_dir2?
        create_directories [vtctld_web_dir]

        remote_directory vtctld_web_vtctld do
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

        remote_directory vtctld_web_vtctld2 do
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
