class Apartment
  attr_accessor :rent, :sqft, :num_bathrooms, :num_bedrooms, :renters

  def initialize (sqft, num_bedrooms, num_bathrooms)
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
    "apt is #{@sqft} square feet and has #{@renters.count} renters"
  end
end
