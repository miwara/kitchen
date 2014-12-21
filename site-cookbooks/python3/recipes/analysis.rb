%w{
gcc-gfortran
blas-devel
lapack-devel
libpng-devel
}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "install pip package" do
  user "root"
  command <<-EOF
#{node['python']['pip']} install numpy
#{node['python']['pip']} install scipy
#{node['python']['pip']} install pandas
#{node['python']['pip']} install matplotlib
#{node['python']['pip']} install scikit-learn
EOF
end
