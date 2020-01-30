case node['platform']
when 'debian', 'ubuntu'
  package %w[curl software-properties-common]
end


etcd_ver = 'v3.3.18'
download_url = 'https://github.com/etcd-io/etcd/releases/download'
dir_name = "etcd-#{etcd_ver}-linux-amd64"
source_url = "#{download_url}/#{etcd_ver}/#{dir_name}.tar.gz"
tarball_path = "/tmp/#{dir_name}.tar.gz"

remote_file tarball_path do
  source source_url
end

execute 'extract_etcd_targz' do
  command "tar xzvf #{tarball_path} -C /tmp/ --overwrite"
  creates "/tmp/#{dir_name}"
end

directory '/tmp/etcd_data'

systemd_unit 'etcd.service' do
  content <<-EOF.gsub(/^\s+/, '')
  [Unit]
  Description=etcd
  Documentation=https://github.com/coreos/etcd
  Conflicts=etcd.service
  Conflicts=etcd2.service

  [Service]
  Type=notify
  Restart=always
  RestartSec=5s
  LimitNOFILE=40000
  TimeoutStartSec=0

  ExecStart=/tmp/#{dir_name}/etcd --name s1 \
    --data-dir /tmp/etcd_data/s1 \
    --listen-client-urls http://localhost:2379 \
    --advertise-client-urls http://localhost:2379 \
    --listen-peer-urls http://localhost:2380 \
    --initial-advertise-peer-urls http://localhost:2380 \
    --initial-cluster s1=http://localhost:2380 \
    --initial-cluster-token tkn \
    --initial-cluster-state new

  [Install]
  WantedBy=multi-user.target
  EOF
  action [:create, :enable, :start]
end
