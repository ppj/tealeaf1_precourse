class Vehicle
  @@object_count = 0

  attr_accessor :color
  attr_reader   :year,  :model

  def initialize(y, c, m)
    @year  = y
    @model = m
    self.color = c
    @speed = 0
    @@object_count += 1
  end

  def self.object_count
    "Number of vehicle type objects created so far = #{@@object_count}"
  end

  def speed_up(speed_addition)
    @speed += speed_addition
    puts "You've accelerated by #{speed_addition} to #{@speed} mph"
  end

  def brake(speed_reduction)
    @speed -= speed_reduction
    puts "You've slowed down by #{speed_reduction} to #{@speed} mph"
  end

  def speed
    puts "You are currently going at #{@speed} mph"
    @speed
  end

  def self.mileage(distance, fuel_used)
    mileage   = distance/fuel_used.to_f
    puts "The vehicle goes #{mileage} miles for a gallon of gas"
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "You've painted your vehicle #{self.color}. Looks wicked!"
  end

  def shut_off
    puts "Looking for parking..."
    @speed = 0
  end

  def age
    age = get_age
    case
    when age == 0
      puts "This vehicle is brand new"
    when age == 1
      puts "This vehicle is just a year old"
    when age > 30
      puts "This vehicle is a classic (#{age} years old)"
    else
      puts "This vehicle is #{age} years old"
    end

  end

  private

  def get_age
    Time.new.year - self.year.to_i
  end

end
