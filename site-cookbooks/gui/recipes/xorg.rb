%w{
xorg-server
xorg-server-utils
xorg-xinit
xorg-utils
xterm
libunwind
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

%w{
00-xorg.conf
10-keymap.conf
20-monitor.conf
}.each do |configurefile|
  template "/etc/X11/xorg.conf.d/#{configurefile}" do
    source "xorgconf/#{configurefile}"
    action :create
  end
end

template "/home/#{node['user']}/.xinitrc" do
  source "xinitrc"
  user "#{node['user']}"

  action :create
end

template "/home/#{node['user']}/.Xmodmap" do
  source "xmodmap"
  user "#{node['user']}"

  action :create
end
