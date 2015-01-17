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
blas
lapack
gcc-fortran
}.each do |pkg|
  package pkg do
    action :install
  end
end



execute "python package install" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install ipython
#{node['python']['pip']} install pyreadline
#{node['python']['pip']} install numpy
#{node['python']['pip']} install scipy
#{node['python']['pip']} install matplotlib
#{node['python']['pip']} install scikit-learn
#{node['python']['pip']} install pynote
EOF
end
