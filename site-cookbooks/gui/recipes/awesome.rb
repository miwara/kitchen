%w{
awesome
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/root/.xinitrc" do
  source "xinitrc/awesome.erb"
  owner "root"

  action :create
end

template "/etc/xdg/awesome/rc.lua" do
  source "aweconf/rc.lua"
  owner "root"

  action :create
end
