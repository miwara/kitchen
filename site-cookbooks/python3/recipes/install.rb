#
# Cookbook Name:: python3::install
#

%w{
python
python-pip
python-setuptools
bluez-libs
mpdecimal
sqlite
tk
valgrind
gdb
}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{
blas
lapack
gcc-fortran
}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "pip install numpy" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install numpy
EOF
end

execute "pip install scipy" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install scipy
EOF
end

execute "pip install pandas" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install pandas
EOF
end

execute "pip install matploglib" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install matplotlib
EOF
end

execute "pip install scikit-learn" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install scikit-learn
EOF
end
