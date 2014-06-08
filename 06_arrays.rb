def print_separator
  50.times {print "-"}
  puts "\n\n"
end

# exercise 01
puts "Arrays 01: Check whether array contains something"
arr = [1, 3, 5, 7, 9, 11]
number = 3
puts "#{arr} contains #{number} (true or false): #{arr.include?(number)}"
print_separator

# exercise 02
puts "Arrays 02: What will the following snippets return & what does 'arr' have after each?"
puts "
1. arr = [\"b\", \"a\"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = [\"b\", \"a\"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
"
puts "Answer:
1. Returns '1'
   arr = [[\"b\"], [\"b\", 2], [\"b\", 3], [\"a\", 1], [\"a\", 2], [\"a\", 3]]
2. Returns '[1, 2, 3]'
   arr = [[\"b\"], [\"a\", [1, 2, 3]]]"
print_separator

# exercise 03
arr = [["test", "hello", "world"],["example", "mem"]]
puts "Arrays 03: Print 'example' from the array #{arr}"
puts arr.last.first
print_separator

# exercise 04
arr = [15, 7, 18, 5, 12, 8, 5, 1]
puts "Arrays 04: Return values for the following calls on #{arr}"
puts "arr.index(5) returns 3"
puts "arr.index[5] returns NoMethodError ([] cannot be used on arr.index)"
puts "arr[5] returns 8"
print_separator

# exercise 05
string = "Welcome to Tealeaf Academy!"
puts "Arrays 05: Values of the following for #{string}"
puts "string[6]  = 'e'"
puts "string[11] = 'T'"
puts "string[19] = 'A'"
print_separator

# exercise 06
names = ['bob', 'joe', 'susan', 'margaret']
puts "Arrays 06: For array names = #{names}, why do you get the error when you run"
puts "names['margaret'] = 'jody'"
puts "TypeError: no implicit conversion of String into Integer"
puts "A: Arrays cannot have a non-integer index ('margaret') in the above case"
print_separator

# exercise 07
puts "Arrays 07: Increment each value in an array by 2 to create a new one and print both arrays"
arr1 = [2, 5, 6, 9, 3]
arr2 = arr1.map {|v| v+2}
p arr1
p arr2
print_separator