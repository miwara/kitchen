%w{
xorg-server
xorg-server-utils
xorg-xinit
xorg-utils
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
