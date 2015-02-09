# reboot the server now


# this file will get deleted on reboot
# enables us to test a debug reboots
template "/tmp/reboot-marker" do 
	cookbook 'sysadmin'
	source 'reboot-marker.erb'
end

execute "reboot now" do
	user 'root'
	group 'root'
end
