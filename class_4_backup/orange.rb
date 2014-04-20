class Orange
  @@no_of_oranges = 0

  attr_accessor :name, :size

  def initialize(name, size)
    @name = name
    @size = size
    @@no_of_oranges += 1
  end

  def self.no_of_oranges
    @@no_of_oranges
  end
end