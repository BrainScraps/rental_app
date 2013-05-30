require "pry" 

require_relative "building"
require_relative "apartment"
require_relative "person"

building = nil

print "add (p)erson or (a)partment or (b)uilding or (q)uit: "

response = gets.chomp.downcase

while response != "q"
  if response == "b"
    building = Building.new("123 King st.", "modern", false, false, 10)
    puts "Building created."

  elsif response == "a"
    print "Unit number:"
    unit_no = gets.chomp
    print "Square footage:"
    sqft = gets.to_i
    
    building.apartments[unit_no] = Apartment.new(unit_no, sqft, 1,1)

  elsif response == "p"
    print "Name:"
    name = gets.chomp
    print "Age:"
    age = gets.to_i
    print "Gender:"
    gender = gets.chomp
    print "What apartment does this person live in?"
    apt = gets.chomp

    building.apartments[apt].renters << Person.new(name, age, gender)
  else break

  end

  print "add (p)erson or (a)partment or (b)uilding or (q)uit: "

  response = gets.chomp.downcase

end
binding.pry

