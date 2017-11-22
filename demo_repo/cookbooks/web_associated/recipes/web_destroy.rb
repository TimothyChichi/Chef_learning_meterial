#
# Cookbook:: web_associated
# Recipe:: web_destroy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service 'apache2' do
	action [:stop, :disable]
end

package 'apache2' do
	action [:purge]
end

file '/var/www/html/index.html' do
	action :delete
end
