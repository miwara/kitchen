#
# Cookbook Name:: utils
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{
ncurses
zsh
git
rsync
strace
nano
emacs
gdb
tree
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

# execute "set shell to zsh" do
#   user "#{node['user']}"
#   group "#{node['user']}"

#   command <<-EOH
#   chsh -s /bin/zsh #{node['user']}
#   EOH

#   not_if 'test "/bin/zsh" = "$(grep #{node['user']} /etc/passwd | cut -d: -f7)"'
# end
