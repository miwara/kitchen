#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache" do
  action :upgrade
end

service "httpd" do
	supports :status => true, :restart => true, :reload => true
	action [ :enable, :start ]
        reload_command "/usr/bin/apachectl graceful"
end

template "/etc/httpd/conf/httpd.conf" do
  source "/etc/httpd/conf/httpd.conf"
  notifies :reload, 'service[httpd]'
end
