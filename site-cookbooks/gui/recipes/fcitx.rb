%w{
fcitx
fcitx-mozc
fcitx-qt4
fcitx-configtool
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

%w{
otf-ipafont
}.each do |pkg|
  package pkg do
    action :install
  end
end
