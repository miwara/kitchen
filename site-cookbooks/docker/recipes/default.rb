#
# cookbook:: docker
#

package "docker" do
  action :upgrade
end

service "docker" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

execute "subsume docker group" do
  command "gpasswd -a #{node['user']} docker"
  not_if "grep docker /etc/group | grep #{node['user']}"
end
