# three enemy horses

class Enemy_horse

	attr_accessor :name, :position

	def initialize(name)
		@name = name
		@position = 1
		@symbol = ''
	end

	def move_forward
		@position += rand(4)
	end
end