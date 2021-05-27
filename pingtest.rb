require 'ipaddr'
require 'net/ping'
require 'rspec'
myip= IPAddr.new "8.8.8.8"

check = Net::Ping::External.new('www.google.com')
puts "Reachable" if check.ping? == true
check = Net::Ping::External.new(myip)
puts check.ping?