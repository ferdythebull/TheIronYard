# one user horse
# accept user input
#cheat code will be in this file

CHEAT_CODES = ["instawin", "instastart"]

class User_horse
	attr_accessor :name, :position

	#cheat codes array via a constant

	def initialize(name)
		@name = name
		@position = 1
	end
	def move_forward
		@position += rand(4)
	end

	def cheat_codes(user_input)
		#include - Array
		instawin = CHEAT_CODES[0]
		instastart = CHEAT_CODES[1] 
	end

end