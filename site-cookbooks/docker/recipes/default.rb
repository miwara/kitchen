#
# cookbook:: docker
#

package "docker" do
  action :upgrade
end

execute "enable docker.service" do
  command "systemctl enable docker.service"
  not_if "systemctl status docker.service | grep enabled"
end

execute "subsume docker group" do
  command "gpasswd -a #{node['user']} docker"
  not_if "grep docker /etc/group | grep #{node['user']}"
end
