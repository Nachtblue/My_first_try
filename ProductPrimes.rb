load 'test.rb'

require 'prime'
def product_of_primes szam
  primeszamok= Prime.first(40)
  primeszamok.each do |egyprime|
    if primeszamok.include?(szam/egyprime.to_f)
      #puts szam/egyprime , egyprime
      return true
    end

  end
  return false
end

Test.assert_equals(product_of_primes(2059), true)
Test.assert_equals(product_of_primes(7), false)
Test.assert_equals(product_of_primes(25), true)
Test.assert_equals(product_of_primes(39), true)
Test.assert_equals(product_of_primes(5767), true)
Test.assert_equals(product_of_primes(77), true)
Test.assert_equals(product_of_primes(12), false)
