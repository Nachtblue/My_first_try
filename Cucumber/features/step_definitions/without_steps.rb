Given('OMG The original number is {int}') do |int|
  @szam = int

end

When('OMG I add {int} to it') do |int|
  @adando = int
end

Then('OMG Results should be: {int}') do |int|
  #@szam + @adando == int
  fuggveny == int
end

def fuggveny
  @szam + @adando
end