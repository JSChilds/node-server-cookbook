#
# Cookbook:: node-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update

package 'nginx'
service 'nginx' do
	supports :restart => true, :reload => true, :start => true
	action [:enable, :start]
end

template '/etc/nginx.conf' do
	source 'nginx.conf.erb'
	mode '0755'
	owner 'root'
	group 'root'
	notifies :restart, "service[nginx]"
end

package 'nodejs'
package 'npm'
execute 'sudo npm install -g pm2'