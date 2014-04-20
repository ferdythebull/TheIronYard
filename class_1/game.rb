puts "Welcome to Tic Tac Toe!"
@game_on = true
@game_board = [ [0,0,0], [0,0,0], [0,0,0] ]
@game_winner = "WINNER WINNER CHICKEN DINNER Player "

def display_board
	p @game_board
	puts " #{display_player(@game_board[0][0])}  |  #{display_player(@game_board[0][1])}  | #{display_player(@game_board[0][2])} "
	puts '-------------'
	puts " #{display_player(@game_board[1][0])}  |  #{display_player(@game_board[1][1])}  | #{display_player(@game_board[1][2])} "
	puts '-------------'
	puts " #{display_player(@game_board[2][0])}  |  #{display_player(@game_board[2][1])}  | #{display_player(@game_board[2][2])} "
end

def display_player(player_choice)
	if player_choice == 1
		'X'
	elsif player_choice == 2
		'O'
    else ''
	end
end

def game_play(player_choice, player_number)
	case player_choice
	when "1"
		@game_board[0][0] = player_number == 1 ? 1 : 2
		# Ternary operator
		# if player_number == 1
		#   @game_board[0][0] = 1
		# else
		#   @game_board[0][0] = 2
		# end
	when "2"
		@game_board[0][1] = player_number == 1 ? 1 : 2
	when "3"
		@game_board[0][2] = player_number == 1 ? 1 : 2
	when "4"
		@game_board[1][0] = player_number == 1 ? 1 : 2
	when "5"
		@game_board[1][1] = player_number == 1 ? 1 : 2
	when "6"
		@game_board[1][2] = player_number == 1 ? 1 : 2
	when "7"
		@game_board[2][0] = player_number == 1 ? 1 : 2
	when "8"
		@game_board[2][1] = player_number == 1 ? 1 : 2
	when "9"
		@game_board[2][2] = player_number == 1 ? 1 : 2
	end	
end

def check_win(player_number)
	# Horizontals
	if @game_board[0][0] == player_number && @game_board[0][1] == player_number && @game_board[0][2] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	elsif @game_board[1][0] == player_number && @game_board[1][1] == player_number && @game_board[1][2] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	elsif @game_board[2][0] == player_number && @game_board[2][1] == player_number && @game_board[2][2] == player_number
		@game_on = false
		@game_winner << player_number.to_s

	# Verticals
	elsif @game_board[0][0] == player_number && @game_board[1][0] == player_number && @game_board[2][0] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	elsif @game_board[0][1] == player_number && @game_board[1][1] == player_number && @game_board[2][1] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	elsif @game_board[0][2] == player_number && @game_board[1][2] == player_number && @game_board[2][2] == player_number
		@game_on = false
		@game_winner << player_number.to_s

	# Diagonals
	elsif @game_board[0][0] == player_number && @game_board[1][1] == player_number && @game_board[2][2] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	elsif @game_board[0][2] == player_number && @game_board[1][1] == player_number && @game_board[2][0] == player_number
		@game_on = false
		@game_winner << player_number.to_s
	end
	puts @game_winner if @game_on == false
end

display_board
while @game_on == true
	puts "Player 1 Choice (1-9):"
	player_1_choice = gets.chomp
	game_play(player_1_choice, 1)
	display_board
	check_win(1)
	puts "Player 2 Choice (1-9):"
	player_2_choice = gets.chomp
	game_play(player_2_choice, 2)
	display_board
	check_win(2)
end

# Test this. 
# if a[3] === (1..10)
# 	p "This is a test"
# end

