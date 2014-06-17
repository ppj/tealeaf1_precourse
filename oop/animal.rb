module Defend
  def defend
    puts "growl"
  end
end


class Animal
  include Defend
end

doggy = Animal.new

puts Animal.ancestors

gets.chomp