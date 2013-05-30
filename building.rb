class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
  end

  def count_renters
    i = 0 
    @apartments.each { |k, v|
     i += v.count}
    return i 
  end

  def to_s
    "the #{@style} building at #{@address} has #{@apartments.count} apartments with #{count_renters}" 
  end
  
end

