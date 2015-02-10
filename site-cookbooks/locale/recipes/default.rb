#
# cookbook:: locale
#
template "/etc/locale.gen" do
  source "/etc/locale.gen"

  notifies :run, "execute[exec locale-gen]", :immediately
end

template "/etc/locale.conf" do
  source "/etc/locale.conf"
end

execute "exec locale-gen" do
  command "locale-gen"
  action :nothing
end

# timezone
link "/etc/localtime" do
  to "/usr/share/zoneinfo/Asia/Tokyo"
  link_type :symbolic
end
