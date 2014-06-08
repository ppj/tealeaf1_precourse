def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01 (name.rb)
puts "Variables 01: Print user-entered name with greeting"
print "Enter your name: "
name = gets.chomp
puts "Hullloooooo #{name}"
print_separator

# exercise 02 (age.rb)
puts "Variables 02: Print users age in 10, 20, 30 and 40 years"
puts "Now enter your age #{name}: "
age = gets.chomp.to_i
puts "In 10 years, you will be #{age+10}"
puts "In 20 years, you will be #{age+20}"
puts "In 30 years, you will be #{age+30}"
puts "In 40 years, you will be #{age+40}"
print_separator

# exercise 03
puts "Variables 03: Print users name 10 times using an iterator"
10.times {puts name}
print_separator

# exercise 04
puts "Variables 04: Concatenates user-entered first and last names"
print "Enter your first name: "
fname = gets.chomp
print "Enter your last name: "
lname = gets.chomp
puts "Full Name: #{fname + " " + lname}"
print_separator

# exercise 05
puts "Variables 05: Variable scope"
puts "Snippet 1 prints '3' without any error"
puts "Snippet 2 would print an 'variable/method not found' error because variable 'x' is out of the loop (scope) when it is being printed"
print_separator

# exercise 06
puts "Variables 06: NameError"
puts "Q: What does this error mean:
         'NameError: undefined local variable or method `shoes' for main:Object'"
puts "A: Either variable shoes is not defined or is used out of scope of it's availability."
print_separator
