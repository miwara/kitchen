#
# cookbook:: postgresql
#

package "postgresql" do
  action :upgrade
end

execute "postgresql initdb" do
  user "postgres"
  command "initdb --locale ja_JP.UTF-8 -D #{node['data_directory']}"
  not_if "test -e #{node['data_directory']}/PG_VERSION"
end

service "postgresql" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
