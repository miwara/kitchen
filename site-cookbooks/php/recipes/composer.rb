#
# cookbook:: composer
#
execute "install composer" do
  user node['user']
  environment "HOME" => "/home/#{node['user']}"
  cwd "/home/#{node['user']}"

  command <<-EOH
  curl -sS https://getcomposer.org/installer | php
  sudo mv $HOME/composer.phar /usr/local/bin/composer
  EOH

  not_if "test -e /usr/local/bin/composer"
end
