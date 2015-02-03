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
