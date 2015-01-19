#
# cookbook:: clang
#

%w{
clang
clang-analyzer
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
