def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Flow Control 01: True or False?"
puts "'(32 * 4) >= 129' is '#{(32 * 4) >= 129}'"
puts "'false != !true' is '#{false != !true}'"
puts "'true == 4' is '#{true == 4}'"
puts "'false == (847 == '874')' is '#{false == (847 == '874')}'"
puts "'(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false' is '#{(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false}'"
print_separator

# exercise 02
puts "Flow Control 02: Capitalize if length > 10"
def capitalize_if_length_more_than_10(input)
  if input.length > 10
    return input.upcase
  end
  return input
end
puts capitalize_if_length_more_than_10("tEst")
puts capitalize_if_length_more_than_10("testING")
puts capitalize_if_length_more_than_10("so Much foR teStinG")
print_separator

# exercise 03
puts "Flow Control 03: Number range test"
def gtet_lower_lt_upper(num, lower, upper)
  num >= lower && num < upper
end

print "Enter an integer between 0 and 100: "
num = gets.chomp.to_i
if gtet_lower_lt_upper(num, 0, 50)
  puts "Number's greater than/equal to 0 but less than 50"
elsif gtet_lower_lt_upper(num, 50, 100)
  puts "Number's greater than/equal to 50 but less than 100"
else
  puts "Number's either less than 0 or greater than/equal to 100"
end
print_separator

# exercise 04
puts "Flow Control 04: What do the following print"
puts "
1. '4' == 4 ? puts(\"TRUE\") : puts(\"FALSE\")

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts \"Did you get it right?\"
   else
     puts \"Did you?\"
   end

3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts \"Alright.\"
   elsif (x + 1) >= (y)
     puts \"Alright now!\"
   elsif (y + 1) == x
     puts \"ALRIGHT NOW!\"
   else
     puts \"Alrighty!\"
   end
"

print "Answers"
puts "
1. FALSE
2. Did you get it right?
3. Alright now!
"
print_separator

# exercise 05
puts "Flow Control 05: Number range test using case"
print "Enter an integer between 0 and 100: "
num = gets.chomp.to_i
answer = case
           when gtet_lower_lt_upper(num, 0, 50)
             puts "Number's greater than/equal to 0 but less than 50"
           when gtet_lower_lt_upper(num, 50, 100)
             puts "Number's greater than/equal to 50 but less than 100"
           else
             puts "Number's either less than 0 or greater than/equal to 100"
         end

print_separator

# exercise 06
puts "Flow Control 06: What's the error in code below? Fix it."
puts "
def equal_to_four(x)
  if x == 4
    puts \"yup\"
  else
    puts \"nope\"
end
equal_to_four(5)
"
puts "A: The if loop does not have an 'end' statement. The correct code is..."
puts "
def equal_to_four(x)
  if x == 4
    puts \"yup\"
  else
    puts \"nope\"
  end
end
equal_to_four(5)
"
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end
equal_to_four(5)
print_separator