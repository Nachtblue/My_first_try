Given('The normal price is {int}') do |int|
  @price = int
end

When('The discount is {int}') do |int|
  @discount = int

end

Then('The final price is {int}') do |int|
  @final= int
  expect((@price*(100-@discount))/100).to eq(@final)
end