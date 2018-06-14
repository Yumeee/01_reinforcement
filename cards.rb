def select_cards(possible_cards, hand)
  total = 0
  possible_cards.each do |current_card|
    if total < 3
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
      if answer.downcase == 'y'
        total += 1
        hand << current_card
      end
    else
      puts "You can't have more than 3 cards"
      break
    end
  end
  return hand
end


available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"

# having else with puts only makes it loop to the end of the available_cards array and will puts the string until the loop is done.
# break makes it break from the loop and move onto the next if statement
