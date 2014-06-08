def print_separator
  50.times {print "-"}
  puts "\n\n"
end

def print_array(array)
  array.each { |n| puts n }
  puts "------------"
end

# exercise 01
puts "Exercise 01: Print each element of array [1 ... 10] with each method"
numbers = []
(1..10).each { |n| numbers.push(n) }


print_array numbers
print_separator

# exercise 02
puts "Exercise 02: Print numbers greater than 5"
greater_than_5 = numbers.select { |n| n > 5 }
print_array greater_than_5

# exercise 03
puts "Exercise 03: Print odd numbers"
odd_numbers = numbers.select { |n| n%2 == 1}
print_array odd_numbers

# exercise 04
puts "Exercise 04: Insert 0 in the beginning and 11 at the end"
numbers.push(11)
numbers.unshift(0)
print_array numbers

# exercise 05
puts "Exercise 05: Get rid of 11 and append 3 to the array"
numbers.pop
numbers.push(3)
print_array numbers

# exercise 06
puts "Exercise 06: Get rid of duplicates without explicitly deleting any value"
numbers.uniq!
print_array numbers

# exercise 07
puts "Exercise 07:"
puts "Q:\tWhat's the major difference between an Array and a Hash?"
puts "A:\tHashes are key-value pairs where the keys and values can be any valid data type.
\tArrays are indexed using integers (0 and upward)"

# exercise 08
puts "Excersise 08: Create hashes using both Ruby syntax styles"
hash1 = {name: "John Doe", age: 25}
hash2 = {:name => "John Doe", :age => 25}
p hash1
p hash2
print_separator

# exercise 09.1
h = {a:1, b:2, c:3, d:4}
puts "Exercise 09.1: Given a hash #{h}, what's the value at key :b"
puts h[:b]
print_separator

# exercise 09.2
puts "Exercise 09.2: Add the key:value pair '{e:5}' to the above hash"
h[:e] = 5
puts h
print_separator

# exercise 09.3
puts "Exercise 09.3: Delete key:value pairs if value < 3.5"
puts h.delete_if { |k, v| v < 3.5}
print_separator

# exercise 10
puts "Exercise 10:"
puts "Q:\tCan hash values be arrays? Can you have an array of hashes? (give examples)"
puts "A:\tYes & Yes"
h1 = {name: 'Usain Bolt', times: [10.13, 9.92, 9.95, 9.68]}
puts "The value @ key = :times is of type #{h1[:times].class}"
h2 = {name: 'Ben Johnston', times: [9.95, 9.09, 10.02, 10.25]}
array_of_hashes = [h1, h2]
puts "The type of variable 'array_of_hashes' is #{array_of_hashes.class} and it is...\n#{array_of_hashes}"
print_separator

# exercise 11
puts "Exercise 11: Look at several Rails/Ruby online API sources and say which one you like best and why."
puts "A:\t'http://www.ruby-doc.org/core-1.9.3' if referring to pure Ruby API as it is official and hence most reliable
\t'http://api.rubyonrails.org' if referring to Rails API for the same reason"
print_separator

# exercise 12
puts "Exercise 12: Write a program that moves the information from the array given below
                   into the empty hash that applies to the correct person"

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {email:contact_data[0][0], address:contact_data[0][1], phone:contact_data[0][2]},
            "Sally Johnson" => {email:contact_data[1][0], address:contact_data[1][1], phone:contact_data[1][2]}}

puts contacts
print_separator

# exercise 13
puts "Exercise 13: Demonstrate how you would access Joe's email and Sally's phone number from the above hash?"
puts "Joe's email: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone]}"
print_separator

# exercise 14
puts "Exercise 14: Create the same data structure as in the previous example for Joe Smith using loops instead of assignment"
fields = [:email, :address, :phone]
contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.first().shift()
  end
  contact_data.shift()
end
contacts.each_key { |name| puts "#{name}: #{contacts[name]}" }
print_separator

# exercise 15
puts "Exercise 15: Delete all words that begin with an \"s\" in the following array"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
print_array arr
arr.delete_if { |word| word.start_with?("s") }
print_array arr

# exercise 16
puts "Exercise 16:  Turn a given array into a new one that consists of strings containing one word"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_a = a.map do |phrase|
  phrase.split
end
new_a = new_a.flatten()
print_array new_a

# exercise 17
puts "Exercise 17: What will the following code print?"
puts "hash1 = {shoes: \"nike\", \"hat\" => \"adidas\", :hoodie => true}
hash2 = {\"hat\" => \"adidas\", :shoes => \"nike\", hoodie: true}

if hash1 == hash2
  puts \"These hashes are the same!\"
else
  puts \"These hashes are not the same!\"
end"
puts "A:\tThese hashes are the same!"
print_separator

puts "Test Run:"
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
print_separator
