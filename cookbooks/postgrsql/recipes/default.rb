#
# Cookbook:: postgrsql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgrsql-server' do
	notifies :run, 'execute[postgrsql-init]', :immediately
end

execute 'postgrsql-init' do
	command 'postgrsql-setup initdb'
	action :nothing
end

service 'postgrsql' do
	action [:enable, :start]
end
