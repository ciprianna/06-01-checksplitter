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
  def test_history_update
    dinner = DinnerClub.new
    club_history = {}
    one_event = {"06-10-2015" => ["Dundee Dell", {"Calypso" => 11}]}

    assert_equal({"06-10-2015" => ["Dundee Dell", {"Calypso" => 11}]}, dinner.club_history_update(club_history, one_event))
  end

  # Test for the running_balance_update method. Should show that the Hash has
  #   been modified.
  def test_running_balance_update
    dinner = DinnerClub.new
    club_history_ex = {"06-10-2015" => ["Dundee Dell", {"Calypso" => 11}]}
    dinner.running_balance_update(dinner.running_balance, club_history_ex)

    assert_equal({"Calypso" => 11}, dinner.running_balance)
  end

end
