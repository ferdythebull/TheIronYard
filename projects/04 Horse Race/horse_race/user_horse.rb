# one user horse
# accept user input
#cheat code will be in this file


class User_horse
	attr_accessor :name, :position, :move

	#cheat codes array via a constant

	def initialize(name)
		@name = name
		@position = 1
	end

	def cheat_codes(move)
		if move == "instawin"
			@position = 20
		elsif move == "instastart"
			@position = 1
		else
			@position += rand(4)
		end
	end

end