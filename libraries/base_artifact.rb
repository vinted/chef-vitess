require_relative 'base_service'

class Chef
  class Resource
    class BaseArtifact < VitessBaseService
      attribute(:command, kind_of: String, default: '')
      attribute(:command_action, kind_of: Symbol, default: :run)
      attribute(:command_creates, kind_of: String, default: '')
      attribute(:command_ignore_failure, kind_of: [TrueClass, FalseClass], default: false)
      attribute(:command_returns, kind_of: [Integer, Array], default: 0)
      attribute(:command_run_once, kind_of: [TrueClass, FalseClass], default: true)
    end
  end

  class Provider
    class BaseArtifact < VitessBaseService

      protected

      def execute_command
        env = vitess_environment
        cmd = "#{bin_location} -alsologtostderr=1 #{new_resource.command}"
        run_once_cache_file = ::File.join(
          Chef::Config[:file_cache_path],
          "vitess_run_once_#{Digest::MD5.hexdigest(new_resource.command)}"
        )

        file run_once_cache_file do
          content "RUN ONCE FILE for: #{new_resource.name}\ncmd: #{cmd}\n"
          mode '0755'
          owner 'root'
          group 'root'
          action :nothing
        end

        execute "executing command: #{new_resource.bin_name} #{new_resource.command}" do
          environment env
          command cmd
          creates new_resource.command_creates unless new_resource.command_creates.empty?
          action new_resource.command_action
          user new_resource.user
          group new_resource.group
          ignore_failure new_resource.command_ignore_failure
          returns new_resource.command_returns
          notifies :create_if_missing, "file[#{run_once_cache_file}]", :immediately
          not_if { ::File.exist?(run_once_cache_file) } if new_resource.command_run_once
        end
      end
    end
  end
end
