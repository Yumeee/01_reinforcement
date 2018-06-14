def select_cards(possible_cards, hand)
  total = 0
  possible_cards.each do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      if total < 3
        total += 1
        hand << current_card
      else
        puts "You can't have more than 3 cards."
        exit
      end
    end
  end
  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
