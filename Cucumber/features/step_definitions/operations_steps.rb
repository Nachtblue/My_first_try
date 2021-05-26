Given('The original number is: {int}') do |int|
  @szam = int

end

When('If i add {int} to it') do |int|
  @adando = int
end

Then('Results should be: {int}') do |int|
  #@szam + @adando == int
   fuggveny == int
end

def fuggveny
  @szam + @adando
end