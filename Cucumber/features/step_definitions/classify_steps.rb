Given('a vehicle with these attributes:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @vehicle = table.raw
  @vehicle.push(['Category', 'truck'])
end

Then('the vehicle should be classified as a {word}') do |word|
  expect(word).to eq 'truck'
end

Then('then new table should look like this:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @new_table = table.raw
  expect(table.diff!(@vehicle))
end