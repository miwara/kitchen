#
# cookbook:: composer
#
execute "install composer" do
  user node['user']
  environment "HOME" => "/home/#{node['user']}"
  cwd "/home/#{node['user']}"

  command "curl -sS #{node['composer']['uri']} | php -- --filename=composer --install-dir=$HOME"

  not_if "test -e /home/#{node['user']}/composer"
end
