
class FinalCheck

  def assert_equals(mit,mivel)
    puts "Passed" if mit == mivel
    puts "Failed" if mit != mivel
  end

end

Test=FinalCheck.new