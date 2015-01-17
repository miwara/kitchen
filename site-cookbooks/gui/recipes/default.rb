#
# Cookbook Name:: GUI
#

include_recipe "gui::xorg"
include_recipe "gui::awesome"
include_recipe "gui::slim"
include_recipe "gui::fcitx"

%w{
gnome-terminal
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
