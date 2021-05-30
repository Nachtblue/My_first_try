Given('The input is a string') do

end

When('I call the letter changer method on {string}') do |string|
  @word=string

end

Then('should return {string}') do |string|
  @myoutput=string
  final= changed(@word)
  expect(final).to eq(@myoutput)
end

def changed(text)
  new = []
  myarray = text.split("")
  myarray.each do |item|
    new << item.next
  end
  return new.join("")
end