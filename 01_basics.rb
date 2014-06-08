def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Basics 01: Concatenate two strings"
full_name = "Prasanna " + "Joshi"
puts full_name
print_separator

# exercise 02
puts "Basics 02: Print 4 digits of an integer"
print "Enter a four digit integer: "
number = gets.chomp.to_i
digits = []
4.times do
  digits.push(number%10)
  number = number / 10
end
puts "Thousands: #{digits[3]}"
puts "Hundreds:  #{digits[2]}"
puts "Tens:      #{digits[1]}"
puts "Ones:      #{digits[0]}"
print_separator

# exercise 03
puts "Basics 03: Movie years from hash"
movies = {The_Shawshank_Redemption: 1994, The_Godfather: 1972, Schindlers_List: 1993, Forrest_Gump: 1994}
movies.values.each do |value|
  puts value
end
print_separator

# exercise 04
puts "Basics 04: Movie years from array extracted from the hash"
years = movies.values
years.each do |year|
  puts year
end
print_separator

# exercise 05
puts "Basics 05: Factorials"
def factorial(num)
  result = 1
  num.times do
    result *= num
    num -= 1
  end
end
puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)
print_separator

# exercise 06
puts "Basics 06: Squares of Floats"
3.times do
  print "Enter any number: "
  num = gets.chomp.to_f
  puts "Square of #{num} = #{num*num}"
end
print_separator

# exercise 07
puts "Basics: Exercise 07: syntax error, unexpected ')', expecting '}'"
puts "A: A typo in the code: Should have been '}' instead of ')'"
print_separator

