def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Hashes 01: Separate immediate family members in the given array"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

family_immediate = family.select {|k, v| k == :sisters || k == :brothers}.values.flatten
p family_immediate
print_separator

# exercise 02
puts "Hashes 02: Difference between the 'merge' and 'merge!' methods on hashes"
family_more = { cousins: ["nick", "john", "megan"]}
family_big = family.merge(family_more)
puts "With 'merge'"
print "family     = #{family}\n"
print "family_big = #{family_big}\n"
puts "With 'merge!'"
family.merge!(family_more)
print "family     = #{family}\n"
print_separator

# exercise 03
puts "Hashes 03: Print only keys, then only values and then both of a hash"
family.each_key { |key| puts key }
family.each_value { |val| puts val }
family.each {|k, v| puts "Key - #{k}:\tValue - #{v}"}
print_separator

# exercise 04
puts "Hashes 04: Given a hash, access the value at a particular key"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts "person = #{person}"
puts "name = #{person[:name]}"
print_separator

# exercise 05
puts "Hashes 05: Given a hash, check whether it has a particular value"
puts "Hash person has value 'painting' (true or false): #{person.has_value?("painting")}"
puts "Hash person has value 'Rob' (true or false): #{person.has_value?("Rob")}"
print_separator

# exercise 06
puts "Hashes 06: Given an array of 4-letter words, group the anagrams together in separate arrays"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagrams = {}
words.each do |word|
  sorted_letters = word.split('').sort # sort letters in word alphabetically to use as key
  if anagrams.has_key?(sorted_letters)
    anagrams[sorted_letters].push(word)
  else
    anagrams[sorted_letters] = [word]
  end
end
anagrams.each_value { |list| p list}
print_separator

# exercise 07
puts "Hashes 07: What's the difference in the two hashes created below"
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
puts "
x = \"hi there\"
my_hash = {x: \"some value\"}
my_hash2 = {x => \"some value\"}
"
puts "Answer:
my_hash has the key ':x', i.e. symbol 'x'
my_hash  = #{my_hash}
my_hash2 has the key \"hi there\", the string stored in variable x
my_hash2 = #{my_hash2}
"
print_separator

# exercise 08
puts "Arrays 08: NoMethodError"
puts "If you see the following error
  'NoMethodError: undefined method `keys' for Array'
Which of these is true?
A. We're missing keys in an array variable.
B. There is no method called keys for Array objects.
C. keys is an Array object, but it hasn't been defined yet.
D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
"
puts "Answer: B"
print_separator