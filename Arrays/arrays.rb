#1.) Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is includes in the array"
end


#2.) How do you return the word "example" from the following array?
arr.last.first


#3.) Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
arr.each_with_index { |x, index| puts "index #{index} => #{x}" }


#4.) Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
arr = [1, 2, 3, 4, 5]
new_arr=[]

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
