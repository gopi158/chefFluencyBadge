hostname = node['hostname']
file 'message' do
	path '/root/motd'
	content "Hostname is this: #{hostname}"
end
