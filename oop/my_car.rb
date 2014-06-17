require 'pry'

require './vehicle'

class MyCar < Vehicle

  VEHICLE_TYPE = "This is a passenger car!"


  def to_s
    VEHICLE_TYPE + "\nThis car is a (#{self.color}) #{self.year} #{self.model}"
  end


end


car1 = MyCar.new(1956, "blue", "impala")
#puts "Your car: #{car1.year} - #{car1.model} (#{car1.color})"
puts car1
car1.speed_up 50
car1.speed
car1.brake 20
car1.shut_off
car1.spray_paint "magenta"
MyCar.mileage 100, 10

puts Vehicle.object_count

puts "MyCar Method Search Path"
puts MyCar.ancestors
car1.age