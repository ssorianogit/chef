#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
#
package 'Install Apache service' do
  package_name 'httpd'
end

service 'httpd' do
  action [ :enable, :start]
end

file '/var/www/html/index.html' do
 content '<h1>Hello, world!</h1>'
 action 'create'
end
