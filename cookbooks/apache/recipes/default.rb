#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
if node['platform_family'] == "rehl"
	packageName = "httpd"
elsif node['platform_family'] == "debian"
	packageName = "apache2"
end

package 'apache2' do #resource package name 'apache'
#	package_name 'httpd' #package name 'httpd'[centos]
	package_name packageName
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

#include_recipe 'apache::website'
