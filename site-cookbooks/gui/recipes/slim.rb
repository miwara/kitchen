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

service "slim" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
