# CheckSplitter Test

require "minitest/autorun"
require_relative "check_splitter.rb"

class CheckSplitterTest < Minitest::test
  # One test will be for the initialize method. It should return an args hash
  #   with default values. I will test if it returns that hash as expected.

  # The next test will be for the tip_percentage method. It should be able to
  #   take an Integer or Float, and return it as a Float.

  # Another test will be for the neg_tip method. It should be able to take a
  #   negative Float as an input and set the value to 0.15.

  # Another test is for the people_count method. This will set the Integer value
  #   of people to one if the value is input <= 0.

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
