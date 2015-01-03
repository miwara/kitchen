#
# Cookbok Name:: xorg
#

package "sudo" do
  action :install
end

template "/etc/sudoers" do
  source "sudoers"
  action :create
end
