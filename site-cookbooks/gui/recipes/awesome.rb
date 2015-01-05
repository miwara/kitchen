%w{
awesome
xorg-server-xephyr
xcompmgr
transset-df
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/etc/xdg/awesome/rc.lua" do
  source "rc.lua"
  owner "root"

  action :create
end

template "/usr/share/awesome/themes/default/theme.lua" do
  source "theme.lua"
  owner "root"

  action :create
end
