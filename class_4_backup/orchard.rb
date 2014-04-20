class Orchard
  attr_accessor :name, :crop, :sorted_crops

  def initialize(name)
    @name = name
    @crop = []
    @sorted_crops = {apple: [], cherry: [], orange: []}
  end

  def add_crop(crop)
    @crop.push(crop)
  end

  # [ Apple(), Apple(), Cherry(), Cherry() ]
  # Expected result:
  #   {apple: [Apple(), Apple()], cherry: [Cherry(), Cherry()]}

  def sort_crop
    @crop.each do |crop|
      if crop.class == Apple
        @sorted_crops[:apple].push(crop)
      elsif crop.class == Cherry
        @sorted_crops[:cherry].push(crop)
      elsif crop.class == Orange
        @sorted_crops[:orange].push(crop)
      end
    end
    @sorted_crops
  end

  def delete_crop(crop)
    @crop.delete(crop)
  end
end