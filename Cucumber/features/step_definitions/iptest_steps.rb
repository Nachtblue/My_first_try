require 'ipaddr'
require 'net/ping'

Given('The basic of IP testing is know') do
  puts "Using net/ping"
end

When('I ping {string}') do |string|
  @myip = IPAddr.new string
  if @myip == '8.8.8.8'
    @host='www.google.com'
  end
end

Then('It should say {string}') do |string|
  @myanswer=string
  check = Net::Ping::External.new(@host)

     if check.ping? == true
       answer= "reachable"
     else
       answer="non reachable"
     end
  expect(@myanswer).to eq(answer)

end

