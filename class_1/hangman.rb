# require "./dictionary.txt"

# put out attr_reader for the variables
@game_on = nil
@letters_guessed = nil
@turns = nil
@game_word = nil
@letter = nil
@show_instructions = nil
@gametime = nil
@wrong_guesses = [] #array of wrong guesses to hangman game

#begin the game 'board'
def start_game
@game_on = true
@letters_guessed = [] #the letters guessed by the player pushed to this array
@turns = 6 #one turn for every section of the body
#the link to the dictionary file goes here
file = File.open("./dictionary.txt")
@dictionary = file.readlines
end

#begin the 'rulebook'
def rules
	@game_word = @dictionary.sample #gets a random word from the dictionary file
	@letter = @game_word.chars.to_a #creates an array of the letters in the game_word
	@disp = []
	 #each character of the dictionary word will be an underscore and a space
	puts "Welcome to the Hangman game."
	gametime #a round of the game hangman is currently being played
end

#starts a loop of the game
def gametime
	while @game_on == true
		@game_word.length.times do |x|
			@disp.push("_")
		end
		puts @disp.join(" ")
		#displays the word as it is being guessed
		puts "Please guess a letter."
		#is guessed_letter the letter that the user enters???
		@guessed_letter = gets.chomp.downcase # runs the method that takes a letter from the user and makes it lowercase
		for i in (0..(@game_word.count - 1)) do #i is a substring in the game_word file. Each substring is assigned i in ascending order
			if @guessed_letter == @game_word[i] #if the user's guess is equal to a substring in game_word
				push guessed letter to @disp[i] #then push the guessed letter to the corresponding substring of the disp. Resaves the disp with the guessed letter in the correct place
			else puts "This letter is not in the word."
				@guessed_letter.push to @wrong_guesses
			end
		end

		@guessed_letters << @guessed_letter #the letter guessed goes to the guessed letters array
		if have_turns? && !won?
			get_output #the get_output method has the computer say something to the user ##doesn't seems == to be being called

		elsif won?
			puts "You WIN! The answer is #{game_word}}! Good job!"
			game_over #makes the game_on method not true
		else
			 #lose method
			end
			end
		end

		def game_over #the game_over method that was called
			@game_on != true
		end

		def lose #the lose method is called
			puts "Sorry, that was the incorrect answer. The correct answer is #{game_word}. YOU LOSE."
			game_over
		end

		def won? #checks the length of game letters after guessed letters are subtracted. If it is 0, the player wins
			puts @guessed_letters
			puts "Guessed_letters"
			puts @letter
			puts "letter"
			(@letter - @guessed_letters).length == 0
		end

		def have_turns? #checks to see how many turns are left
			@turns > 1
		end

		def guessed_letters?
			if @guessed_letters.include? @letter
				puts "Letter already guessed."
				gametime #runs the gametime again
			end
		end

		def get_output
			if @letter.size > 1 || if @letter.size < 1
				puts "Invalid input. Please enter a letter"
			elsif @game_letters.include? @letter #if the letter is included in the list
				puts "Correct! This letter is included in the word"
			else
				@turns -= 1
				puts "You have lost a turn. You have #{turns} left." #takes away a turn and tells the user how much they have left
			end
		end
	end

	start_game
		rules