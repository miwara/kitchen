%w{
awesome
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/root/.xinitrc" do
  source "awesome.erb"
  owner "root"

  action :create
end
