class Apartment
  attr_accessor :name, :rent, :sqft, :num_bathrooms, :num_bedrooms, :renters

  def initialize (name, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s 
    "apt #{@name} is #{@sqft} square feet and has #{@renters.count} renters"
  end
end
