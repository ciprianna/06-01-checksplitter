# CheckSplitter Test

require "minitest/autorun"
require_relative "check_splitter.rb"

class CheckSplitterTest < Minitest::Test
  # One test will be for the initialize method. It should return an args hash
  #   with default values. I will test if it returns that hash as expected.
  def test_initialize_hash_created
    new_check = CheckSplitter.new

    assert_equal({total_cost: 20, tip_percentage: 0.15, people: 2},new_check.args)
  end

  # The next test will be for the tip_percentage method. It should be able to
  #   take an Integer or Float, and return it as a Float.
  def test_tip_percentage
    new_check = CheckSplitter.new(tip_percentage: 15)

    assert_equal(0.15, new_check.tip_percent(new_check.args))
  end

  # Another test will be for the neg_tip method. It should be able to take a
  #   negative Float as an input and set the value to 0.15.
  def test_negative_tip_amounts
    new_check = CheckSplitter.new(tip_percentage: -15)

    assert_equal(0.15, new_check.neg_tip(new_check.args))
  end

  # Another test is for the people_count method. This will set the Integer value
  #   of people to one if the value is input <= 0.
  def test_people_count
    new_check = CheckSplitter.new(people: 0)

    assert_equal(1, new_check.people_count(new_check.args))
  end

  # A test for the total_cost_of_meal method should take two values as Integers
  #   and return the first value (total_cost) plus the first value times the
  #   second value (tip_percentage)
  

  # The base_cost_per_person method should return the first value input, Float,
  #   divided by the second value input, an Integer.

  # A test for the tip_per_person method will take one value, a Float
  #   (total_cost), and multiply it by a second value, another Float
  #   (tip_percentage), and divides it by an Integer (people). Should return
  #   a Float.

  # The final_per_person method should take two Floats and add them together.
  #   The return should be another Float.

end
