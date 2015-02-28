#
# cookbook:: pacman
#
package "yaourt" do
  action :upgrade
end

template "/etc/pacman.conf" do
  source "/etc/pacman.conf"

  notifies :run, "execute[update pacman]", :immediately
end

execute "update pacman" do
  command "pacman -Syy"
  action :nothing
end
