def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "More Stuff 01: check if char sequence 'lab' exists in an array of strings"
words = [ "laboratory",
          "experiment",
          "Pans Labyrinth",
          "elaborate",
          "polar bear"]

def lab_present_in?(word)
  word =~ /lab/
end

words.each do |word|
  if lab_present_in? word
    puts word
  else
    puts "No match found!"
  end
end
print_separator

# exercise 02
puts "More Stuff 02: What does the following return and print to screen?"
puts"
def execute(&block)
  block
end

execute { puts \"Hello from inside the execute method!\" }
"
puts "Answer: This doesn't print anything because the 'block' is never 'call'ed
However, it creates and returns a 'proc' object."
print_separator

# exercise 03
puts "More Stuff 03: Exception Handling"
puts "Q: What's exception handling and what purpose does it serve?"
puts "A: It is a way to handle expected errors gracefully and help bypass erroneous inputs by the user of the program."
print_separator

# exercise 04
puts "More Stuff 04: Fix code in exercise 02 so that it does what's expected of it"
def execute(&block)
  block.call
end
execute { puts "Hello from inside the execute method!" }
print_separator

# exercise 05
puts "More Stuff 05: Execution Error (ArgumentError)"
puts "Why does the following code...
# File: test.rb
def execute(block)
  block.call
end

execute { puts \"Hello from inside the execute method!\" }
Give us the following error when we run it?
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
"
puts "Answer: The method 'execute' is defined to take a parameter (argument) 'block' without the 'ampersand' (&)"
print_separator