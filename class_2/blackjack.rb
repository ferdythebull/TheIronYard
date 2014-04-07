# Fix a nice drink
# Keep game going!
# I need cards
cards_in_hand = []
dealer_cards_in_hand = []
@gameon = true

def get_card
	rand(1..11)
end

def check_win(cards)  # parameters is anything passed inside a function
	if cards > 21
		@gameon = false
	elsif cards == 21
		@gameon = false
	elsif cards < 21
	end
end

# Dealer needs to give me two cards
cards_in_hand.push(get_card)
cards_in_hand.push(get_card)

while @gameon == true
	card_values = 0
	puts "You have the following cards: "
	cards_in_hand.each do |card|
		puts card
		card_values += card
	end
	puts "Card values: #{card_values}"
	puts "Do you want to hit or stay (h to hit, s to stay)?"
	hit_or_stay = gets.chomp
	if hit_or_stay == 'h'
		new_card = get_card
		cards_in_hand.push(new_card)
		puts "This is your new card #{new_card}"
		card_values += new_card
		puts "Your total is now: #{card_values} "
		check_win(card_values)
	end

	if hit_or_stay == 's'
		check_win(card_values)
		@gameon = false
	end
end

@gameon = true


dealer_cards_in_hand.push(get_card)
dealer_cards_in_hand.push(get_card)

while @gameon == true
	dealer_card_values = 0
	new_card = get_card
	dealer_cards_in_hand.each do |card|
		dealer_card_values += card
	end
	while
		if dealer_card_values < 17
			dealer_cards_in_hand.push(new_card)
			dealer_card_values += new_card
		else
			@gameon = false
		end
	end
end

check_win(dealer_card_values)

if dealer_card_values > card_values && dealer_card_values <= 21
	puts "Dealer wins with a total of: #{dealer_card_values}"
elsif card_values > dealer_card_values && card_values <= 21
	puts "User wins with a total of: #{card_values}"
elsif dealer_card_values > 21 && card_values > 21
	puts "Both the dealer and you bust"
elsif dealer_card_values > 21 && card_values <= 21
	puts "User wins with a total of: #{card_values}"
elsif card_values > 21 && dealer_card_values <= 21
	puts "Dealer wins with a total of: #{dealer_card_values}"
else 
	puts "Tie."
end

puts "User Total: #{card_values}"
puts "Dealer Total: #{dealer_card_values}"