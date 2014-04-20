require "./enemy_horse.rb"
require "./user_horse.rb"

@mertal = User_horse.new("Mertal")
@tomorrows_glue = Enemy_horse.new("Tomorrow's Glue")
@love_substitute = Enemy_horse.new("Love Substitute")
@toronado = Enemy_horse.new("Toronado")
@game_on = nil

def game
	@game_on = true
	welcome
	track
end

def welcome
	puts "Welcome to the Iron Raceyard.\n In this program, your horse will race three other horses. First horse to get to 20 wins the race. When you press enter, your horse, along with the other horses, will go forward 1-4 spaces. Keep pressing enter until the race ends.\n If you're a super-lame cheater, there will be cheat codes available for you to use.\n Real gamers don't use cheats, though.\n OK, press ENTER to begin, and keep pressing ENTER until the race finishes!\n\n"
end

def track
	while @game_on == true
		puts "#{@mertal.name}: #{@mertal.position}\n"
		puts "#{@tomorrows_glue.name}: #{@tomorrows_glue.position}\n"
		puts "#{@love_substitute.name}: #{@love_substitute.position}\n"
		puts "#{@toronado.name}: #{@toronado.position}\n" 
		puts "|-----|-----|-----|-----|"
		@mertal.position.times do |x|
			print "*"
		end
		print "\n"
		@tomorrows_glue.position.times do |x|
			print "*"
		end
		print "\n"
		@love_substitute.position.times do |x|
			print "*"
		end
		print "\n"
		@toronado.position.times do |x|
			print "*"
		end
		print "\n"
		puts "|-----|-----|-----|-----|"
		puts "Press ENTER to continue...\n\n"
		move = gets.chomp.downcase
		@mertal.cheat_codes(move)
		system "clear"
		@tomorrows_glue.move_forward
		@love_substitute.move_forward
		@toronado.move_forward
		lose
	end

	puts "#{@mertal.name}: #{@mertal.position}\n"
		puts "#{@tomorrows_glue.name}: #{@tomorrows_glue.position}\n"
		puts "#{@love_substitute.name}: #{@love_substitute.position}\n"
		puts "#{@toronado.name}: #{@toronado.position}\n" 
		puts "|-----|-----|-----|-----|"
		@mertal.position.times do |x|
			print "*"
		end
		print "\n"
		@tomorrows_glue.position.times do |x|
			print "*"
		end
		print "\n"
		@love_substitute.position.times do |x|
			print "*"
		end
		print "\n"
		@toronado.position.times do |x|
			print "*"
		end
		print "\n"
		puts "|-----|-----|-----|-----|"
		lose
end

def lose
	if @mertal.position >= 20
		puts "#{@mertal.name} wins! Congratulations!"
		@game_on = false
	elsif @tomorrows_glue.position >= 20
		puts "#{@tomorrows_glue.name} wins! You lose."
		@game_on = false
	elsif @love_substitute.position >= 20
		puts "#{@love_substitute.name} wins! You lose."
		@game_on = false
	elsif @toronado.position >= 20
		puts "#{@toronado.name} wins! You lose."
		@game_on = false
	else
	end
end


game()