%w{
awesome
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/etc/xdg/awesome/rc.lua" do
  source "aweconf/rc.lua"
  owner "root"

  action :create
end
