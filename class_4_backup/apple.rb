# This is a function!
# def hey_man
#   puts "Hey"
# end

# granny_smith = Apple.new
# granny_smith.name = "Granny Smith"
# granny_smith.color = "Green"
# granny_smith.name
# => "Granny Smith"
# granny_smith.color
# => "Green"

class Apple
  attr_accessor :name, :color

  # Constant Variable
  # Apple::APPLE_TYPES
  # => ["Macintosh", "Granny Smith", "Fuji", "Honey Crisp", "Red Delicious"]
  # Apple::APPLE_TYPES[0]
  # => "Macintosh"
  APPLE_TYPES = ["Macintosh", "Granny Smith", "Fuji", "Honey Crisp", "Red Delicious"]

  # Class Variable
  @@no_of_apples = 0

  # attr_reader :name
  # attr_reader :color

  # attr_writer :name
  # attr_writer :color

  # Constructor
  # Opts[0] will be a hash!
  # def initialize(*opts)
  # *opts - This means it will accept unlimited parameters!
  def initialize(name, color)
    puts "Initialize method!"
    @name = name
    @color = color
    @@no_of_apples += 1
  end

  # Class Methods
  def self.no_of_apples
    @@no_of_apples
  end

  # Getter methods
  # def name
  #   puts "Getter method!"
  #   # The last line of code in a function/method is returned
  #   @name
  # end
  #
  # def color
  #   puts "Getter method!"
  #   @color
  # end

  # Setter methods
  # def name=(value)
  #   puts "Setter method!"
  #   @name = value
  # end

  # def color=(value)
  #   puts "Setter method!"
  #   @color = value
  # end
end

# How can we see the code inside of the getter and setter methods
# Where do i get my answers from when I research stuff?

# Number of oranges