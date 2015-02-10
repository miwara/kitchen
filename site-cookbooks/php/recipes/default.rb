#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{php php-apache php-pgsql}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

template "/etc/php/php.ini" do
  source "/etc/php/php.ini"
  notifies :reload, 'service[httpd]'
end
