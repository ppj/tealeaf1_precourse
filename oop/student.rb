class Student
  attr_reader :name

  def initialize(n, g)
    @name, @grade = n, g
  end

  def better_grade_than?(other)
    @grade < other.grade
  end

  protected

  def grade
    @grade
  end

end

p = Student.new("P", "A")
j = Student.new("J", "C")

if p.better_grade_than?(j)
  puts "Well done, #{p.name}!"
else
  puts "You can do better, #{p.name}"
end


gets