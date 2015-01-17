%w{
fcitx
fcitx-mozc
fcitx-qt4
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
