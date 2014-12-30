%w{
slim
archlinux-themes-slim
slim-themes
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
