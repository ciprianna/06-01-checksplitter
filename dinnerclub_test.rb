# DinnerClub Test
require "minitest/autorun"
require_relative "dinnerclub.rb"

class DinnerClubTest < Minitest::Test

  # Need to create a test for the initialize method. The test should show that
  #   two empty hashes are created.
  def test_initialize_hashes
    dinner = DinnerClub.new

    assert_equal({}, dinner.running_balance)
    assert_equal({}, dinner.club_history)
  end

  # Need to test that the club_history_update method changes the
  #   first Hash when two Hashes are given by destructively merging them.

  # Test for the running_balance_update method. Should show that the Hash has
  #   been modified.

end
