def expanded_form number_float
  elemek= number_float.to_s.split("")
  dotishere=elemek.index(".")
  final=[]
  elemek.each_with_index do | elem, index |
    if index < dotishere
    final << elem.to_i*10**(dotishere-index-1) if elem.to_i > 0
    elsif elem.to_i > 0
      final << elem.to_i.to_s + "/" + (10**(index-dotishere)).to_s

    end
  end
  return final.join (" + ")
end

=begin
Test.assert_equals(expanded_form(87.04), '80 + 7 + 4/100')
Test.assert_equals(expanded_form(123.025), '100 + 20 + 3 + 2/100 + 5/1000')
Test.assert_equals(expanded_form(50.270), '50 + 2/10 + 7/100')
Test.assert_equals(expanded_form(207.333), '200 + 7 + 3/10 + 3/100 + 3/1000')
Test.assert_equals(expanded_form(0.57), '5/10 + 7/100')
Test.assert_equals(expanded_form(140.023), '100 + 40 + 2/100 + 3/1000')
Test.assert_equals(expanded_form(90.99), '90 + 9/10 + 9/100')
Test.assert_equals(expanded_form(84.5), '80 + 4 + 5/10')
Test.assert_equals(expanded_form(76.02), '70 + 6 + 2/100')
Test.assert_equals(expanded_form(44.5), '40 + 4 + 5/10')
Test.assert_equals(expanded_form(37.49), '30 + 7 + 4/10 + 9/100')
Test.assert_equals(expanded_form(60.0007), '60 + 7/10000')
Test.assert_equals(expanded_form(29.22), '20 + 9 + 2/10 + 2/100')
Test.assert_equals(expanded_form(10.99), '10 + 9/10 + 9/100')
Test.assert_equals(expanded_form(63.09), '60 + 3 + 9/100')
Test.assert_equals(expanded_form(37.022), '30 + 7 + 2/100 + 2/1000')
Test.assert_equals(expanded_form(43.21), '40 + 3 + 2/10 + 1/100')
Test.assert_equals(expanded_form(309.028), '300 + 9 + 2/100 + 8/1000')
Test.assert_equals(expanded_form(447.33), '400 + 40 + 7 + 3/10 + 3/100')
Test.assert_equals(expanded_form(65.05), '60 + 5 + 5/100')
Test.assert_equals(expanded_form(47.34), '40 + 7 + 3/10 + 4/100')
Test.assert_equals(expanded_form(68.699), '60 + 8 + 6/10 + 9/100 + 9/1000')
Test.assert_equals(expanded_form(1.24), '1 + 2/10 + 4/100')
Test.assert_equals(expanded_form(4.28), '4 + 2/10 + 8/100')
Test.assert_equals(expanded_form(7.304), '7 + 3/10 + 4/1000')
Test.assert_equals(expanded_form(0.04), '4/100')
Test.assert_equals(expanded_form(0.1234), '1/10 + 2/100 + 3/1000 + 4/10000')
=end
