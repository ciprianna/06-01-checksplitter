# Test Program

require './dinnerclub.rb'

puts "Your first Dinner Club event!"
club = DinnerClub.new

puts "Did you go out to dinner?"
answer = gets.chomp.downcase

while answer != "no"
  puts "How much did the dinner cost?"
  total_cost = gets.chomp.to_i

  puts "Great, and what percentage of tip did the group leave?"
  tip_percentage = gets.chomp.to_f

  puts "Who attended?"
  people = gets.chomp

  people_array = people.split(", ")

  puts "When did you go? (MM-DD-YYYY)"
  date = gets.chomp

  puts "Where did you go?"
  location = gets.chomp

  puts "Who paid?  If it was split evenly, type 'everyone'."
  who_paid = gets.chomp

  club.new_event(total_cost, tip_percentage, people_array, date, location, who_paid)

  puts "Did you go to another dinner event?"
  answer = gets.chomp.downcase

end

puts "Would you like to check club history?"
history_check = gets.chomp.downcase

if history_check == "yes"
  club.display_history(club.club_history)
end

puts "Okay. Thanks for using the Dinner Club app!"
