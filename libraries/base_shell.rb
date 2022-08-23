require_relative 'base_service'

class Chef
  class Resource
    class BaseShell < VitessBaseService
      attribute(:file_name, kind_of: String, default: lazy { bin_name })
      attribute(:file_prefix, kind_of: String, default: lazy { raise 'Please provide shell prefix' })
      attribute(:command, kind_of: String, default: '')
      attribute(:environment, kind_of: Hash, default: {})
    end
  end

  class Provider
    class BaseShell < VitessBaseService
      protected

      def deriver_install
        env = vitess_environment.merge(new_resource.environment).map { |k, v| "#{k}=#{v}" }.join(' ')
        cmd = "#{env} #{bin_location} #{new_resource.command}"

        template shell_location do
          source 'bin/wrap.sh.erb'
          variables cmd: cmd
          owner new_resource.user
          group new_resource.group
          mode '0751'
          cookbook 'vitess'
        end
      end

      def shell_name
        [new_resource.file_name, new_resource.file_prefix].join('-')
      end

      def shell_location
        ::File.join(new_resource.bin_path, shell_name)
      end
    end
  end
end
