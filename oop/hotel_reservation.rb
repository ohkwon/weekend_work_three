# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reserve = HotelReservation.new({customer_name: "John", date: "2016-08-01", room_number: 64})

reserve.room_number = 65

puts reserve.room_number
if reserve.room_number == 65
  puts "PASS!"
else
  puts "F"
end

reserve.add_a_fridge
p reserve.amenities

if reserve.amenities.include? "fridge"
  puts "PASS!"
else
  puts "F"
end

reserve.add_a_crib
p reserve.amenities

if reserve.amenities.include? "crib"
  puts "PASS!"
else
  puts "F"
end

reserve.add_a_custom_amenity("TV")
p reserve.amenities

if reserve.amenities.include? ("TV")
  puts "PASS!"
else
  puts "F"
end
