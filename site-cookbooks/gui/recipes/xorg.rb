%w{
xorg-server
xorg-server-utils
xorg-xinit
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
