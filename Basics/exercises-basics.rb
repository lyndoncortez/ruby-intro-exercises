#1.) Add two strings together that, when concatenated, return your first and last name as your full name in one string.
first_name = "Lyndon Joy"
last_name = "Cortez"
puts "Hi! I'm #{first_name} #{last_name}."


#2.) Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 100 / 10
ones = 4936 % 10


#3.) Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. 
movies = {"movieA" => 2001, "movieB" => 2002, "movieC" => 2003}
movies.each {|key, value| puts value }