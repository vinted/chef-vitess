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

      def vtctld_web_release_dir
        @vtctld_web_release_dir ||= ::File.join(new_resource.vtroot, "web-#{vitess_release_hash}")
      end

      def action_delete
        service new_resource.service_name do
          action %i[stop disable]
        end
      end

      protected

      def install_web_directory
        cache_vitess_binary
        web_cache_path = ::File.join(vitess_release_cache_path, 'web')

        bash 'copy web assets' do
          user 'root'
          code <<-CODE
            cp -r #{web_cache_path} #{vtctld_web_release_dir} &&
            chown root:root #{vtctld_web_release_dir} &&
            chmod 0644 #{vtctld_web_release_dir}
          CODE
          not_if { ::File.exist? vtctld_web_release_dir }
        end

        link vtctld_web_dir do
          to vtctld_web_release_dir
        end
      end

      def deriver_install
        install_vitess_binary
        install_web_directory
        install_service
        start_service
      end
    end
  end
end
