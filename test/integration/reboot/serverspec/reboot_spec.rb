
require 'serverspec'

describe file('/tmp/reboot-marker') do
	it {
		sleep(15) #seconds
		should_not be_file
	}
end

