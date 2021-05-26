Given('The original number is {int}') do |int|
  @szam = int
end
When('I add 2 to it') do

end

Then('Results should be: {string}') do |string|
  fuggveny == string.to_i
  end
def fuggveny
  @szam + 2
end