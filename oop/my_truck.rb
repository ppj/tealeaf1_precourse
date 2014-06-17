require './vehicle'
require './dirt_track_driveable'
class MyTruck < Vehicle
  include DirtTrackDriveable
  VEHICLE_TYPE = "This is a truck, usually used to move heavy stuff!"

  def to_s
    VEHICLE_TYPE + "\nThis truck is a (#{self.color}) #{self.year} #{self.model}"
  end
end



truck1 = MyTruck.new("2014", "Ranger", "Silver")
puts truck1
truck1.dirt_track_driveable
puts Vehicle.object_count
puts "MyTruck Method Search Path"
puts MyTruck.ancestors
truck1.age
