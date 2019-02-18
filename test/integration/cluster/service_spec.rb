require_relative 'helpers'

SERVICES.each do |service|
  describe service(service) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
