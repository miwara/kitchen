%w{
xorg-server
xorg-server-utils
xorg-xinit
xorg-utils
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/etc/X11/xorg.conf.d/10-keymap.conf" do
  source "xorgconf/10-keymap.conf"
  action :create
end


template "/home/#{node['user']}/.xinitrc" do
  source "xinitrc/awesome.erb"
  user "#{node['user']}"

  action :create
end
