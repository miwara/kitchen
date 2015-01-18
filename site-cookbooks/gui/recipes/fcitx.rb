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

template "/home/#{node['user']}/.config/fcitx/config" do
  source "fcitx/config"

  owner "#{node['user']}"
  group "#{node['group']}"

  notifies :run, "execute[reload fcitx]"
end

%w{
fcitx-autoeng.config
fcitx-chttrans.config
fcitx-classic-ui.config
fcitx-clipboard.config
fcitx-imselector.config
fcitx-keyboard.config
fcitx-notify.config
fcitx-pinyin-enhance.config
fcitx-quickphrase.config
fcitx-spell.config
fcitx-unicode.config
fcitx-xim.config
fcitx-xkb.config
}.each do |conffile|
  template "/home/#{node['user']}/.config/fcitx/conf/#{conffile}" do
    source "fcitx/conf/#{conffile}"

    owner "#{node['user']}"
    group "#{node['group']}"

    notifies :run, "execute[reload fcitx]"
  end
end

execute "reload fcitx" do
  command "fcitx -r"
  action :nothing
end
