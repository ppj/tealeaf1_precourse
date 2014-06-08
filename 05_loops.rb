def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Loops & Iterators 01: What does the each method return in the following?"
puts "
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
"
puts "A: The original array [1, 2, 3, 4, 5]"

# exercise 02
puts "Loops & Iterators 02: Loop till user enters 'STOP'"
begin
  print "Enter something ('STOP' to quit): "
  input = gets.chomp
  puts "You've entered #{input.length} characters"
end while input != "STOP"
print_separator

# exercise 03
puts "Loops & Iterators 03: Use each_with_index on array to print each index and value"
my_array = ["Trust", "Respect", "Responsibility", "Care", "Fun"]
my_array.each_with_index do |val, idx|
  puts "#{idx+1}. #{val}"
end

# exercise 04
puts "Loops & Iterators 04: Write a method to count down to zero using recursion"
def countdown(number)
  puts number
  if number > 0
    countdown(number-1)
  end
end
countdown 10
countdown 2
countdown -3
print_separator