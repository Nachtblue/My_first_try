require 'net/ping'

Given('We have the Examples Section defined') do
  "Yes we have"
end

When('I try to ping the {string} 10 times') do |string|
  @myip = string

end

Then('It should return the success rate {int} %') do |int|
  check=Net::Ping::External.new(@myip)
  success=0
  1.upto(10) do
  success +=1 if check.ping?
  end
  expect(success*100/10).to eq(int)
end
