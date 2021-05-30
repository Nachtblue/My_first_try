require 'ipaddr'
require 'net/ping'
require 'rspec'

#myip= IPAddr.new "8.8.8.8"
myip2="8.8.8.8"
check = Net::Ping::External.new(myip2)
#check = Net::Ping::External.new('www.google.com')
#puts "Reachable" if check.ping? == true
success=0
1.upto(30) do |round|
  #next if round ==2
  success+=1 if check.ping?
end
puts "Ping Success Rate: #{success*100/30} %"