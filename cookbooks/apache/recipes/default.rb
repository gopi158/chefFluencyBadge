#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'apache2' do #resource package name 'apache'
	package_name 'httpd' #package name 'httpd'[centos]
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end
