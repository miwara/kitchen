#
#  Cookbook Name:: python3
#

%w{
zlib-devel
openssl-devel
readline-devel
ncurses-devel
sqlite-devel
expat-devel
bzip2-devel
tcl-devel
tk-devel
gdbm-devel
}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "install python3.x" do
  user "root"
  command <<-EOF
wget #{node['python']['url']} -P /tmp
tar xvfC /tmp/#{node['python']['pkgname']}.tgz /usr/local/src
cd /usr/local/src/#{node['python']['pkgname']}
./configure && make && make install
EOF
  not_if { File.exists?("/tmp/#{node['python']['pkgname']}.tgz") }
end

execute "install ipython, pyreadline" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install ipython
#{node['python']['pip']} install pyreadline
EOF
end
