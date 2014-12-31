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
  source "slimconf/slim.conf"
  owner "root"

  action :create
end
