require "./cherry.rb"
require "./apple.rb"
require "./orange.rb"
require "./orchard.rb"

iron_grove = Orchard.new("Iron Grove")
granny_smith = Apple.new("Granny Smith", "Green")
iron_grove.add_crop(granny_smith)

brayburn = Apple.new("Brayburn", "Red")
iron_grove.add_crop(brayburn)

collins = Cherry.new("Collins", "Green")
iron_grove.add_crop(collins)

honey_crisp = Apple.new("Honey Crisp", "Yellow")
iron_grove.add_crop(honey_crisp)

florida_orange = Orange.new("Florida", "Medium")
iron_grove.add_crop(florida_orange)

# orange = Orchard.new("Orange Orchard")
# fuji = Apple.new("Fuji", "Red")
# orange.add_crop(fuji)

puts iron_grove.name
puts iron_grove.crop.inspect
# puts orange.name
# puts orange.crop.inspect
puts iron_grove.sort_crop
# iron_grove.delete_crop(honey_crisp)
# puts iron_grove.crop.inspect