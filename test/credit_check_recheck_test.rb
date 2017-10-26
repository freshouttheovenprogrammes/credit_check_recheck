require './lib/credit_check_recheck'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
class CreditCheckTest < MiniTest::Test

  def test_instance_of_credit_check
    credit_check = CreditCheck.new

    assert_instance_of CreditCheck, credit_check
  end

  def test_that_array_has_digits_reversed
    credit_check = CreditCheck.new(4187299900019324)
    credit_check.array_input

    assert_equal [4, 2, 3, 9, 1, 0, 0, 0, 9, 9, 9, 2, 7, 8, 1, 4], credit_check.array_input
  end

  def test_that_its_making_new_array_of_only_odd_indicies
    credit_check = CreditCheck.new(4187299900019324)
    credit_check.array_input # this is creating/reversing my array

    assert_equal [4, 4, 3, 18, 1, 0, 0, 0, 9, 18, 9, 4, 7, 16, 2, 8], credit_check.new_array
  end

end
