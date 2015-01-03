#
# Cookbook Name:: GUI
#

include_recipe "gui::xorg"
include_recipe "gui::awesome"
include_recipe "gui::slim"

%w{
gnome-terminal
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
