#
# cookbook:: keymap
#

template "/etc/vconsole.conf" do
  source "vconsole.conf"
  action :create
end
