%w{
slim
archlinux-themes-slim
slim-themes
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/etc/slim.conf" do
  source "slim.conf"
  owner "root"

  action :create
end

execute "enable slim.service" do
  command "systemctl enable slim.service"
  not_if "systemctl status slim.service | grep enabled"
end
