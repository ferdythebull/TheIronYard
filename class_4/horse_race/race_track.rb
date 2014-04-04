# all class files link to this file
# this file contains information on how all the class files interact with one another
# this file contains particulars specific to the charleston_track

require "./enemy_horse.rb"
require "./user_horse.rb"

@mertal = User_horse.new("Mertal")
@tomorrows_glue = Enemy_horse.new("Tomorrow's Glue")
@love_substitute = Enemy_horse.new("Love Substitute")
@toronado = Enemy_horse.new("Toronado")
@game_on = nil

# displays all the horses
	# each horse will have a name
	# one user_horse
	# three enemy_horse
# displays the track
#start the game
	#accept user input
	#horses will move according to our code
		#cheat codes
	#check to see if anyone wins

def game
	@game_on = true
	welcome
	track
	#cheat_code
end

def welcome
	puts "Welcome to the Iron Raceyard.\n In this program, your horse will race three other horses. First horse to get to 20 wins the race. When you press enter, your horse, along with the other horses, will go forward 1-4 spaces. Keep pressing enter until the race ends.\n If you're a super-lame cheater, there will be cheat codes available for you to use.\n Real gamers don't use cheats, though.\n OK, press ENTER to begin, and keep pressing ENTER until the race finishes!\n\n"
end

def track
	#while @game_on == true
		puts "#{user_horse.name}: #{user_horse.position}\n"
		puts "#{enemy_horse_one.name}: #{enemy_horse_one.position}\n"
		puts "#{enemy_horse_two.name}: #{enemy_horse_two.position}\n"
		puts "#{enemy_horse_three.name}: #{enemy_horse_three.position}\n" 
		puts "|-----|-----|-----|-----|"
		user_horse.position.times do |x|
			print "*"
		end
		print "\n"
		enemy_horse_one.position.times do |x|
			print "*"
		end
		print "\n"
		enemy_horse_two.position.times do |x|
			print "*"
		end
		print "\n"
		enemy_horse_three.position.times do |x|
			print "*"
		end
		print "\n"
		puts "|-----|-----|-----|-----|"
	#end
end

def user_horse
	@mertal
end

def enemy_horse_one
	@tomorrows_glue
end

def enemy_horse_two
	@love_substitute
end

def enemy_horse_three
	@toronado
end

def game_over
	@game_on != true
end

#def cheat_code
#	user_horse.cheat_code() = gets.chomp.downcase
#end

game()