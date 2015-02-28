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
blas
lapack
gcc-fortran
}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{
numpy
scipy
matplotlib
scikit-learn
ipython

pyreadline
pynote
}.each do |pip_pkg|
  execute pip_pkg do
    command "pip install #{pip_pkg}"
    not_if "pip freeze | grep #{pip_pkg}"
  end
end

=begin
template "#{Chef::Config['file_cache_path']}/pip_freeze" do
  source "pip_freeze"

  notifies :run, "execute[python package install]", :immediately
end

execute "python package install" do
  command "#{node['python']['pip']} install -r #{Chef::Config['file_cache_path']}/pip_freeze"

  action :nothing
end
=end
