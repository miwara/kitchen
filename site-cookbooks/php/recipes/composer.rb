#
# cookbook:: composer
#
remote_file "/usr/local/bin/composer" do
  source "http://getcomposer.org/composer.phar"
  mode "0755"
  not_if "test -e /usr/local/bin/composer"
end
