hostnam = node['hostname']
file 'message' do
	path '/home/gopi/motd'
	content "Hostname is this: #{hostname}"
end
