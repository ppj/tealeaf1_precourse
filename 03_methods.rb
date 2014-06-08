def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Methods 01: Method that greets the user-passed name"
def greeting(name)
  puts "Hello, #{name}"
end
greeting "Mr. Joshi"
print_separator

# exercise 02
puts "Methods 02: Return values"
puts "'x = 2' returns '2'"
puts "'puts x = 2' returns 'nil'"
puts "'p name = \"Joe\"' returns 'Joe'"
puts "'four = \"four\"' returns 'four'"
puts "'print something = \"nothing\"' returns 'nil'"
print_separator

# exercise 03
puts "Methods 03: Multiply two numbers"
def multiply (num1, num2)
  num1 * num2
end
puts multiply(3.2, 5.6)
print_separator

# exercise 04
puts "Methods 04: What will this print to the screen"
puts "def scream(words)
  words = words + \"!!!!\"
  return
  puts words
end
scream(\"Yippeee\")
"
puts "A: Nothing, since we 'return' before executing the puts statement"
print_separator

# exercise 05
puts "Methods 05: Modify above method to print words on screen"
def scream(words)
  words = words + "!!!!"
  puts words
end
scream("Yippeee")
scream("For crying out loud")
puts "The method still returns 'nil'"
print_separator

# exercise 06
puts "Methods 06: ArgumentError"
puts "Q: What does this error mean?
   ArgumentError: wrong number of arguments (1 for 2)
     from (irb):1:in `calculate_product'"
puts "A: The calculate_product method needs two arguments (parameters) but only one was passed."
print_separator
