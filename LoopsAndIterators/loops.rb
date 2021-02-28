#1.) Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
input = ""
while input != "STOP"
  puts "What's the magic word?"
  input = gets.chomp
end


#2.) Write a method that counts down to zero using recursion.
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(20)