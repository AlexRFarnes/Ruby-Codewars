# Square(n) Sum

# Complete the square sum function so that it squares each number passed into it and then sums the results together.

# For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

def square_sum(numbers)
  return 0 if numbers.length == 0

  numbers.map { |i| i**2 }.reduce { |acc, num| acc + num }
end

p square_sum([0, 3, 4, 5]) # -> 50

# Are You Playing Banjo?

# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r", you are playing banjo!

# The function takes a name as its only argument, and returns one of the following strings:

# name + " plays banjo"
# name + " does not play banjo"

def are_you_playing_banjo(name)
  "#{name} #{name.chars[0].downcase == 'r' ? 'plays banjo' : 'does not play banjo'}"
end

p are_you_playing_banjo('Martin') # -> "Martin does not play banjo"
p are_you_playing_banjo('Rikke') # -> "Rikke plays banjo"

# Count by X

# Create a function with two arguments that will return an array of the first (n) multiples of (x).

# Assume both the given number and the number of times to count will be positive numbers greater than 0.

# Return the results as an array (or list in Python, Haskell or Elixir).

# Examples:

# count_by(1,10) #should return [1,2,3,4,5,6,7,8,9,10]
# count_by(2,5) #should return [2,4,6,8,10]

def count_by(x, n)
  (1).upto(n).map { |i| i * x }
end

# def count_by_alternative(x, n)
#   (1..n).map {|i| i * x}
# end

p count_by(1, 5) # -> [1, 2, 3, 4, 5]
p count_by(2, 5) # -> [2, 4, 6, 8, 10]
p count_by(3, 5) # -> [3, 6, 9, 12, 15]
p count_by(50, 5) # ->  [50, 100, 150, 200, 250]

# DNA to RNA Conversion

# Create a function which translates a given DNA string into RNA.

# For example:

# "GCAT"  =>  "GCAU"

def dna_to_rna(dna)
  return '' unless dna.length != 0

  dna.chars.map { |char| char == 'T' ? 'U' : char }.join
end

# # Alternative
# def dna_to_rna(dna)
#   dna.gsub('T','U')
# end

p dna_to_rna('TTTT') # => "UUUU"
p dna_to_rna('GCAT') # => "GCAU"
p dna_to_rna('GACCGCCGCC') # => "GACCGCCGCC"
p dna_to_rna('') # => ""

# Grasshopper - Grade book

# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

def get_grade(s1, s2, s3)
  average = (s1 + s2 + s3) / 3.0
  if average >= 90
    'A'
  elsif 80 <= average && average < 90
    'B'
  elsif 70 <= average && average < 80
    'C'
  elsif 60 <= average && average < 70
    'D'
  else
    'F'
  end
end

# def get_grade_switch(s1, s2, s3)
#   case (s1 + s2 + s3) / 3.0
#   when 90..100 then "A"
#   when 80..90 then "B"
#   when 70..80 then "C"
#   when 60..70 then "D"
#   else "F"
#   end
# end

# # should return a A for averages above 90'
# p get_grade_switch(95, 90, 93) # => "A"
# p get_grade_switch(100, 85, 96) # => "A"
# p get_grade_switch(92, 93, 94) # => "A"

# # should return a B for averages between 80 and 89'
# p get_grade_switch(70, 70, 100) # => "B"
# p get_grade_switch(82, 85, 87) # => "B"
# p get_grade_switch(84, 79, 85) # => "B"

# # should return a C for averages between 70 and 79'
# p get_grade_switch(70, 70, 70) # => "C"
# p get_grade_switch(75, 70, 79) # => "C"
# p get_grade_switch(60, 82, 76) # => "C"

# # should return a D for averages between 60 and 69'
# p get_grade_switch(65, 70, 59) # => "D"
# p get_grade_switch(66, 62, 68) # => "D"
# p get_grade_switch(58, 62, 70) # => "D"

# # should return a F for averages below 60'
# p get_grade_switch(44, 55, 52) # => "F"
# p get_grade_switch(48, 55, 52) # => "F"
# p get_grade_switch(58, 59, 60) # => "F"

# rng === obj → true or false

# Returns true if obj is an element of the range, false otherwise. Conveniently, === is the comparison operator used by case statements.

# case 79
# when 1..50   then   print "low\n"
# when 51..75  then   print "medium\n"
# when 76..100 then   print "high\n"
# end

# produces:

# high

# Beginner Series #4 Cockroach

# The cockroach is one of the fastest insects. Write a function which takes its speed in km per hour and returns it in cm per second, rounded down to the integer (= floored).

def cockroach_speed(s)
  (s * 100_000 / 3600).floor(0)
end

p cockroach_speed(1.08) # => 30
p cockroach_speed(1.09) # => 30
p cockroach_speed(0) # => 0

# Fake binaries

# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

def fake_bin(s)
  s.chars.map { |char| char.to_i < 5 ? '0' : '1' }.join
end

# def fake_bin(s)
#   s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
# end

p fake_bin('45385593107843568') # => '01011110001100111');
p fake_bin('509321967506747') # => '101000111101101');
p fake_bin('366058562030849490134388085') # => '011011110000101010000011011');

# Convert a Boolean to a String

# Implement a function which convert the given boolean value into its string representation.

# Note: Only valid inputs will be given.

def boolean_to_string(b)
  b.to_s
end

p boolean_to_string(true) # => "true"
p boolean_to_string(false) # => "false"

# L1: Set Alarm

# Write a function named setAlarm which receives two parameters. The first parameter, employed, is true whenever you are employed and the second parameter, vacation is true whenever you are on vacation.

# The function should return true if you are employed and not on vacation (because these are the circumstances under which you need to set an alarm). It should return false otherwise.

def set_alarm(employed, vacation)
  employed && !vacation
end

p set_alarm(true, true) # => false
p set_alarm(false, true) # => false
p set_alarm(false, false) # => false
p set_alarm(true, false) # => true

# Find Maximum and Minimum Values of a List

# Your task is to make two functions (max and min, or maximum and minimum, etc., depending on the language) that receive a list of integers as input and return, respectively, the largest and lowest number in that list.

def min(list)
  list.min
end

def max(list)
  list.max
end

p min([-52, 56, 30, 29, -54, 0, -110]) # => -110
p min([42, 54, 65, 87, 0]) # => 0
p max([4, 6, 2, 1, 9, 63, -134, 566]) # => 566
p max([5]) # => 5

# Even or Odd

# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

def even_or_odd(number)
  number.even? ? 'Even' : 'Odd'
end

# def even_or_odd(number)
#   number.even? ? "Even" : "Odd"
# end

p even_or_odd(2) # => "Even"
p even_or_odd(0) # => "Even"
p even_or_odd(7) # => "Odd"
p even_or_odd(1) # => "Odd"
p even_or_odd(-1) # => "Odd"

# You're a square!

# A square of squares

# You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

# However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.
# Task

# Given an integral number, determine if it's a square number:

# In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.

# The tests will always use some integral number, so don't worry about that in dynamic typed languages.

def is_square(x)
  return false unless x >= 0

  Math.sqrt(x).to_i**2 == x
end

# def is_square(x)
#   x >=0 && Math.sqrt(x).floor**2 == x
# end

# def is_square(x)
#   x >=0 && Math.sqrt(x) % 1 == 0
# end

p is_square(-1) # => false "-1 is not a perfect square"
p is_square 1 # => true "1 is a perfect square (1 * 1)"
p is_square  0 # => true  "0 is a perfect square (0 * 0)"
p is_square  3 # => false  "3 is not a perfect square"
p is_square  4 # => true   "4 is a perfect square (2 * 2)"
p is_square 25 # => true  "25 is a perfect square (5 * 5)"
p is_square 26 # => false "26 is not a perfect square"
p is_square 85 # => false "85 is not a perfect square"

# Binary Addition

# Implement a function that adds two numbers together and returns their sum in binary. The conversion can be done before, or after the addition.

# The binary number returned should be a string.

# Examples:(Input1, Input2 --> Output (explanation)))

def add_binary(a, b)
  quotient = a + b
  binary = []
  while quotient > 0
    binary.insert(0, quotient % 2)
    quotient /= 2
  end
  binary.join('')
end

# # The to_s function in Ruby returns a string containing the place-value representation of int with radix base (between 2 and 36)
# def add_binary(a,b)
#   (a + b).to_s(2)
# end

p add_binary(1, 1) # => "10"
p add_binary(0, 1) # => "1"
p add_binary(1, 0) # => "1"
p add_binary(2, 2) # => "100"
p add_binary(51, 12) # => "111111"

# List Filtering

# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
  l.select { |el| el.is_a? Numeric }
end

# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end

p filter_list([1, 2, 'a', 'b']) # => [1,2]
p filter_list([1, 'a', 'b', 0, 15]) # => [1,0,15]
p filter_list([1, 2, 'aasf', '1', '123', 123]) # => [1,2,123]

# Printer Errors

# n a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.

# The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a...

# Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.

# You have to write a function printer_error which given a string will return the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.

# The string has a length greater or equal to one and contains only letters from ato z.

# def printer_error(s)
# 	"#{s.split("").reduce(0) {
#     |count, char| count += 1 unless char.ord < 110
#     count
#   }}/#{s.length}"
# end

def printer_error(s)
  "#{s.count('n-z')}/#{s.length}"
end

p printer_error('aaaaabbbbmm') # => "0/11"
s = 'aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz'
p printer_error(s) # =>  "3/56"

# Grasshopper - Summation

# Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

def summation(num)
  (1..num).sum
end

p summation(1) # => 1
p summation(8) # => 36

# Sum of odd numbers

# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...

# Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

# 1 -->  1
# 2 --> 3 + 5 = 8
# 3 --> 7 + 9 + 11 = 27
# 4 --> 13 + 15 + 17 + 19 = 64
# 5 --> 21 + 23 + 25 + 27 + 29 = 125
# 6 --> 31 + 33 + 35 + 37 + 39 + 41 =

def row_sum_odd_numbers(n)
  n**3
end

def row_sum_odd_numbers(n)
  start = n * n - n + 1
  finish = start + 2 * n
  (start...finish).step(2).reduce(:+)
end

p row_sum_odd_numbers(1)  # =>  1
p row_sum_odd_numbers(2)  # =>  8
p row_sum_odd_numbers(3)  # =>  27
p row_sum_odd_numbers(4)  # =>  64
p row_sum_odd_numbers(5)  # =>  125
p row_sum_odd_numbers(13) # =>  2197
p row_sum_odd_numbers(19) # =>  6859
p row_sum_odd_numbers(41) # =>  68921

# How good are you really?

# There was a test in your class and you passed it. Congratulations!
# But you're an ambitious person. You want to know if you're better than the average student in your class.

# You receive an array with your peers' test scores. Now calculate the average and compare your score!

# Return True if you're better, else False!
# Note:

# Your points are not included in the array of your class's points. For calculating the average point you may add your point to the given array!

def better_than_average(arr, points)
  arr.reduce(points) { |sum, num| sum += num } / (arr.size + 1.0) < points
end

p better_than_average([2, 3], 5) # => true
p better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75) # => true
p better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69) # => true
p better_than_average([41, 75, 72, 56, 80, 82, 81, 33], 50) # => false
p better_than_average([29, 55, 74, 60, 11, 90, 67, 28], 21) # => false

# Calculate BMI

# Write function bmi that calculates body mass index (bmi = weight / height2).

# if bmi <= 18.5 return "Underweight"

# if bmi <= 25.0 return "Normal"

# if bmi <= 30.0 return "Overweight"

# if bmi > 30 return "Obese"

def bmi(weight, height)
  case weight / height**2
  when 0..18.5
    'Underweight'
  when 18.6..25.0
    'Normal'
  when 25.1..30.0
    'Overweight'
  else
    'Obese'
  end
end

# def bmi(weight, height)
#   bmi = weight / (height ** 2)
#   return "Underweight" if bmi <= 18.5
#   return "Normal" if bmi <= 25.0
#   return "Overweight" if bmi <= 30.0
#   return "Obese"  if bmi > 30
# end

p bmi(50, 1.80) # => "Underweight"
p bmi(80, 1.80) # => "Normal"
p bmi(90, 1.80) # => "Overweight"
p bmi(110, 1.80) # => "Obese"
p bmi(50, 1.50) # => "Normal"

# Convert a Number to a String!

# We need a function that can transform a number into a string.

# What ways of achieving this do you know?
# Examples:

# 123 --> "123"
# 999 --> "999"

def number_to_string(num)
  num.to_s
end

p number_to_string(67) # => '67'

# Opposites Attract

# Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each. If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't.

def lovefunc(flower1, flower2)
  flower1.even? && flower2.odd? || flower1.odd? && flower2.even?
end

# def lovefunc( flower1, flower2 )
#   (flower1 + flower2).odd?
# end

p lovefunc(1, 4) # => true
p lovefunc(2, 2) # => false
p lovefunc(0, 1) # => true
p lovefunc(0, 0) # => false
p lovefunc(5, 5) # => false

# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
  return 0 unless number >= 0

  (1...number).reduce(0) { |acc, num| acc += num % 3 == 0 || num % 5 == 0 ? num : 0 }
end

# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end

p solution(-10) # => 0
p solution(10) # => 23
p solution(20) # => 78
p solution(200) # => 9168

# Sort

# You will be given a vector of strings. You must sort it alphabetically (case-sensitive, and based on the ASCII values of the chars) and then return the first value.

# The returned value must be a string, and have "***" between each of its letters.

# You should not remove or add elements from/to the array.

def two_sort(s)
  s.min.chars.join('***')
end

p two_sort(%w[bitcoin take over the world maybe who knows perhaps]) # => 'b***i***t***c***o***i***n'
p two_sort(%w[turns out random test cases are easier than writing out basic ones]) # => 'a***r***e'
p two_sort(%w[lets talk about javascript the best language]) # => 'a***b***o***u***t'
p two_sort(%w[i want to travel the world writing code one day]) # => 'c***o***d***e');
p two_sort(%w[Lets all go on holiday somewhere very cold]) # => 'L***e***t***s'

# Growth of a Population

# In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater or equal to p = 1200 inhabitants?

# At the end of the first year there will be:
# 1000 + 1000 * 0.02 + 50 => 1070 inhabitants

# At the end of the 2nd year there will be:
# 1070 + 1070 * 0.02 + 50 => 1141 inhabitants (** number of inhabitants is an integer **)

# At the end of the 3rd year there will be:
# 1141 + 1141 * 0.02 + 50 => 1213

# It will need 3 entire years.

# More generally given parameters:

# p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

# the function nb_year should return n number of entire years needed to get a population greater or equal to p.

# aug is an integer, percent a positive or null floating number, p0 and p are positive integers (> 0)

# Examples:
# nb_year(1500, 5, 100, 5000) -> 15
# nb_year(1500000, 2.5, 10000, 2000000) -> 10

# Note:

# Don't forget to convert the percent parameter as a percentage in the body of your function: if the parameter percent is 2 you have to convert it to 0.02.

def nb_year(p0, percent, aug, p)
  years = 0
  while p0 < p
    p0 += (p0 * percent / 100.0).floor + aug
    years += 1
  end
  years
end

p nb_year(1500, 5, 100, 5000) # => 15
p nb_year(1_500_000, 2.5, 10_000, 2_000_000) # => 10
p nb_year(1_500_000, 0.25, 1000, 2_000_000) # => 94

# Rock Paper Scissors!

# # Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples:

# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!

def rps(p1, p2)
  return 'Draw!' if p1 == p2
  if p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock' || p1 == 'rock' && p2 == 'scissors'
    return 'Player 1 won!'
  end

  'Player 2 won!'
end

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    'Draw!'
  elsif beatmap[p1] == p2
    'Player 1 won!'
  else
    'Player 2 won!'
  end
end

p rps('rock', 'scissors') # => "Player 1 won!"
p rps('scissors', 'paper') # => "Player 1 won!"
p rps('paper', 'rock') # => "Player 1 won!"
p rps('scissors', 'rock') # => "Player 2 won!"
p rps('paper', 'scissors') # => "Player 2 won!"
p rps('rock', 'paper') # => "Player 2 won!"
p rps('rock', 'rock') # => 'Draw!'
p rps('scissors', 'scissors') # => 'Draw!'
p rps('paper', 'paper') # => 'Draw!'

# Regex validate PIN code

# TM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.
# Examples (Input --> Output)

# "1234"   -->  true
# "12345"  -->  false
# "a234"   -->  false

def validate_pin(pin)
  return false unless pin.size == 4 || pin.size == 6

  pin.match?(/^\d{4}$/) || pin.match?(/^\d{6}$/)
end

p validate_pin('') # => false
p validate_pin('1') # => false
p validate_pin('1111') # => true
p validate_pin('123456') # => true
p validate_pin('1234567890') # => false
p validate_pin('12') # => false
p validate_pin('a1234') # => false

# Double Char

# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
# Examples (Input -> Output):

# * "String"      -> "SSttrriinngg"
# * "Hello World" -> "HHeelllloo  WWoorrlldd"
# * "1234!_ "     -> "11223344!!__  "

def double_char(str)
  str.chars.map { |char| char * 2 }.join('')
end

p double_char('abcd') # => "aabbccdd"
p double_char('Adidas') # => "AAddiiddaass"
p double_char('1337') # => "11333377"
p double_char('illuminati') # => "iilllluummiinnaattii"
p double_char('123456') # => "112233445566"
p double_char('%^&*(') # => "%%^^&&**(("

# Welcome!

# Your start-up's BA has told marketing that your website has a large audience in Scandinavia and surrounding countries. Marketing thinks it would be great to welcome visitors to the site in their own language. Luckily you already use an API that detects the user's location, so this is an easy win.
# The Task

# - Think of a way to store the languages as a database (eg an object). The languages are listed below so you can copy and paste!
# - Write a 'welcome' function that takes a parameter 'language' (always a string), and returns a greeting - if you have it in your database. It should default to English if the language is not in the database, or in the event of an invalid input.

# The Database

# 'english'=>'Welcome',
# 'czech'=>'Vitejte',
# 'danish'=>'Velkomst',
# 'dutch'=>'Welkom',
# 'estonian'=>'Tere tulemast',
# 'finnish'=>'Tervetuloa',
# 'flemish'=>'Welgekomen',
# 'french'=>'Bienvenue',
# 'german'=>'Willkommen',
# 'irish'=>'Failte',
# 'italian'=>'Benvenuto',
# 'latvian'=>'Gaidits',
# 'lithuanian'=>'Laukiamas',
# 'polish'=>'Witamy',
# 'spanish'=>'Bienvenido',
# 'swedish'=>'Valkommen',
# 'welsh'=>'Croeso'

# Possible invalid inputs include:

# IP_ADDRESS_INVALID - not a valid ipv4 or ipv6 ip address
# IP_ADDRESS_NOT_FOUND - ip address not in the database
# IP_ADDRESS_REQUIRED - no ip address was supplied

LANG_DB = {
  'english' => 'Welcome',
  'czech' => 'Vitejte',
  'danish' => 'Velkomst',
  'dutch' => 'Welkom',
  'estonian' => 'Tere tulemast',
  'finnish' => 'Tervetuloa',
  'flemish' => 'Welgekomen',
  'french' => 'Bienvenue',
  'german' => 'Willkommen',
  'irish' => 'Failte',
  'italian' => 'Benvenuto',
  'latvian' => 'Gaidits',
  'lithuanian' => 'Laukiamas',
  'polish' => 'Witamy',
  'spanish' => 'Bienvenido',
  'swedish' => 'Valkommen',
  'welsh' => 'Croeso'
}.freeze

def greet(language)
  LANG_DB[language] || LANG_DB['english']
end

p greet('english') # => 'Welcome'
p greet('dutch') # => 'Welkom'
p greet('IP_ADDRESS_INVALID') # => 'Welcome'
p greet('spanish') # => 'Bienvenido'

# Function 1 - hello world

# Description:

# Make a simple function called greet that returns the most-famous "hello world!".
# Style Points

# Sure, this is about as easy as it gets. But how clever can you be to create the most creative hello world you can think of? What is a "hello world" solution you would want to show your friends?

def greet
  'hello world!'
end

p greet # => "hello world!"

# Two Sum

# Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple / list (depending on your language) like so: (index1, index2).

# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

# Based on: http://oj.leetcode.com/problems/two-sum/

# twoSum [1, 2, 3] 4 === (0, 2)

def two_sum(numbers, target)
  sum = nil
  indexes = []
  idx1 = 0
  x = 1
  while target != sum
    numbers[x..-1].each_with_index do |num, idx2|
      next unless num + numbers[idx1] == target

      indexes << idx1
      indexes << idx2 + x
      sum = num + numbers[idx1]
      break
    end
    idx1 += 1
    x += 1
  end
  indexes
end

def twoSum(numbers, target)
  numbers.each_with_index do |n1, i1|
    numbers.each_with_index do |n2, i2|
      return [i1, i2] if (n1 + n2) == target && i1 != i2
    end
  end
end

p two_sum([1, 2, 3], 4).sort # => [0, 2]
p two_sum([1234, 5678, 9012], 14_690).sort # => [1, 2]
p two_sum([2, 2, 3], 4).sort # => [0, 1]

# Convert number to reversed array of digits

# Convert number to reversed array of digits

# Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
# Example(Input => Output):

# 348597 => [7,9,5,8,4,3]
# 0 => [0]

def digitize(n)
  n
    .to_s
    .chars
    .reverse
    .map(&:to_i)
end

p digitize(35_231) # => [1,3,2,5,3]
p digitize(0) # => [0]

# Function 3 - multiplying two numbers

# Implement a function which multiplies two numbers.

def multiply(a, b)
  a * b
end

p multiply(2, 3) # => 6

# Sum of two lowest positive integer

# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

# [10, 343445353, 3453445, 3453545353453] should return 3453455.

def sum_two_smallest_numbers(numbers)
  numbers.min(2).reduce(:+)
end

p sum_two_smallest_numbers([5, 8, 12, 18, 22]) # => 13
p sum_two_smallest_numbers([7, 15, 12, 18, 22]) # => 19
p sum_two_smallest_numbers([25, 42, 71, 12, 18, 22]) # => 30

# Are they the "same"?

# Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
# Examples
# Valid arrays

# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

# comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:

# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

# Invalid arrays

# If, for example, we change the first number to something else, comp is not returning true anymore:

# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

# comp(a,b) returns false because in b 132 is not the square of any number of a.

# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

# comp(a,b) returns false because in b 36100 is not the square of any number of a.
# Remarks

#     a or b might be [] or {} (all languages except R, Shell).
#     a or b might be nil or null or None or nothing (except in C++, COBOL, Crystal, D, Dart, Elixir, Fortran, F#, Haskell, Nim, OCaml, Pascal, Perl, PowerShell, Prolog, PureScript, R, Racket, Rust, Shell, Swift).

# If a or b are nil (or null or None, depending on the language), the problem doesn't make sense so return false.

# def comp(array1, array2)
#   return false if array1.nil? || array2.nil? || array1.length != array2.length
#   array1.sort!
#   array2.sort!
#   array1.each_with_index.select { |num, idx| array2[idx] == num*num }.length == array1.length
# end

def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map { |v| v * v } == array2.sort
end

p comp(
  [121, 144, 19, 161, 19, 144, 19, 11],
  [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
)
# => true

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [132, 14_641, 20_736, 361, 25_921, 361, 20_736, 361]

p comp(a, b) # => false

p comp(nil, []) # => false

p comp([], nil) # => false

p comp([], []) # => true

p comp(
  [144, 19, 161, 19, 144, 19, 11],
  [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
) # => false

p comp(
  [121, 121, 144, 19, 161, 19, 144, 19, 11],
  [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
) # => false

# Bouncing Balls

# A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

# He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

# His mother looks out of a window 1.5 meters from the ground.

# How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?
# Three conditions must be met for a valid experiment:

#     Float parameter "h" in meters must be greater than 0
#     Float parameter "bounce" must be greater than 0 and less than 1
#     Float parameter "window" must be less than h.

# If all three conditions above are fulfilled, return a positive integer, otherwise return -1.
# Note:

# The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.
# Examples:

# - h = 3, bounce = 0.66, window = 1.5, result is 3

# - h = 3, bounce = 1, window = 1.5, result is -1

# (Condition 2) not fulfilled).

def bouncingBall(h, bounce, window)
  return -1 unless h > 0 && bounce > 0 && bounce < 1 && window < h

  views = 0
  # if height is greater than window then she sees the ball falling down
  while h > window
    views += 1
    h *= bounce
    # after the bounce if the height is greater than the window she sees the ball bouncing up
    views += 1 if h > window
  end
  views
end

p bouncingBall(3, 0.66, 1.5) # => 3
p bouncingBall(30, 0.66, 1.5) # => 15
p bouncingBall(30, 0.75, 1.5) # => 21
p bouncingBall(30, 0.4, 10) # => 3
p bouncingBall(40, 1, 10) # => -1
p bouncingBall(-5, 0.66, 1.5) # => -1

# Does my number look big in this?

# A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

# For example, take 153 (3 digits), which is narcisstic:

#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

# and 1652 (4 digits), which isn't:

#     1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938

# The Challenge:

# Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic number in base 10. This may be True and False in your language, e.g. PHP.

# Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.

def narcissistic?(value)
  exp = value.to_s.length
  value == value
           .to_s
           .chars
           .map(&:to_i)
           .reduce(0) { |sum, num| sum += num**exp }
end

# def narcissistic?(value)
#   value == value
#               .to_s
#               .chars
#               .map { |num| num.to_i ** value.to_s.length }
#               .reduce()
# end

p narcissistic?(5) # => true

p narcissistic?(153) # => true

p narcissistic?(1633) # => false

# Vowel Count

# Return the number (count) of vowels in the given string.

# We will consider a, e, i, o, u as vowels for this Kata (but not y).

# The input string will only consist of lower case letters and/or spaces.

def get_count(input_str)
  # vowels = %w(a e i o u)
  # input_str.chars.filter{|char| vowels.include? char}.size
  input_str.count 'aeiou'
end

p get_count('abracadabra') # => 5
p get_count('') # => 0
p get_count('pear tree') # => 4
p get_count('o a kak ushakov lil vo kashu kakao') # => 13
p get_count('tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty') # => 168

# Alan Partridge II - Apple Turnover

# Alan is known for referring to the temperature of the apple turnover as 'Hotter than the sun!'. According to space.com the temperature of the sun's corona is 2,000,000 degrees C, but we will ignore the science for now.

# Your job is simple, if (x) squared is more than 1000, return 'It's hotter than the sun!!', else, return 'Help yourself to a honeycomb Yorkie for the glovebox.'.

# X will be a valid integer number.

# X will be either a number or a string. Both are valid.

def apple(x)
  x.to_i**2 > 1000 ? "It's hotter than the sun!!" : 'Help yourself to a honeycomb Yorkie for the glovebox.'
end

p apple('50') # => "It's hotter than the sun!!"
p apple(4) # => "Help yourself to a honeycomb Yorkie for the glovebox."
p apple('12') # => "Help yourself to a honeycomb Yorkie for the glovebox."
p apple(60) # => "It's hotter than the sun!!"

# Simple Fun #165: Withdraw

# Task

# An ATM ran out of 10 dollar bills and only has 100, 50 and 20 dollar bills.

# Given an amount between 40 and 10000 dollars (inclusive) and assuming that the ATM wants to use as few bills as possible, determinate the minimal number of 100, 50 and 20 dollar bills the ATM needs to dispense (in that order).
# Example

# For n = 250, the result should be [2, 1, 0].

# For n = 260, the result should be [2, 0, 3].

# For n = 370, the result should be [3, 1, 1].
# Input/Output

#     [input] integer n Amount of money to withdraw. Assume that n is always exchangeable with [100, 50, 20] bills.
#     [output] integer array An array of number of 100, 50 and 20 dollar bills needed to complete the withdraw (in that order).

def withdraw(n)
  bills = [0, 0, 0]
  while n > 0
    if n - 100 > 30 || n - 100 == 0 || n - 100 == 20
      bills[0] += 1
      n -= 100
    elsif n - 50 > 30 || n - 50 == 0 || n - 50 == 20
      bills[1] += 1
      n -= 50
    else
      bills[2] += 1
      n -= 20
    end
  end
  bills
end

p withdraw(40) # => [0, 0, 2]
p withdraw(250) # => [2, 1, 0]
p withdraw(260) # => [2, 0, 3]
p withdraw(230) # => [1, 1, 4]
p withdraw(60) # => [0, 0, 3]
p withdraw(720) # => [7, 0, 1]
p withdraw(240) # => [2, 0, 2]
p withdraw(640) # => [6, 0, 2]
p withdraw(920) # => [9, 0, 1]
p withdraw(70) # => [0, 1, 1]

# Triangular Treasure

# Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

# 1st (1)   2nd (3)    3rd (6)
# *          **        ***
#            *         **
#                      *

# You need to return the nth triangular number. You should return 0 for out of range values:

# For example: (Input --> Output)

# 0 --> 0
# 2 --> 3
# 3 --> 6
# -10 --> 0

def triangular(n)
  n > 0 ? n.downto(1).reduce(:+) : 0
end

p triangular(2) # => 3
p triangular(4) # => 10
p triangular(-5) # => 0

# Is a number prime?

# Define a function that takes an integer argument and returns a logical value true or false depending on if the integer is a prime.

# Per Wikipedia, a prime number ( or a prime ) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
# Requirements

#     You can assume you will be given an integer input.
#     You can not assume that the integer will be only positive. You may be given negative numbers as well ( or 0 ).
#     NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. Numbers go up to 2^31 ( or similar, depending on language ). Looping all the way up to n, or n/2, will be too slow.

# Example

# is_prime(1)  /* false */
# is_prime(2)  /* true  */
# is_prime(-1) /* false */

def isPrime(num)
  return false if num < 0
  return true if num == 2

  m = (num**0.5).ceil.to_f
  while m > 1
    return false if (num / m) % 1 == 0

    m -= 1.0
  end
  true
end

require 'prime'

def isPrimeBuiltIn(num)
  num.prime?
end

p isPrime(4) # => false
p isPrime(100) # => false
p isPrime(999) # => false
p isPrime(958_297) # => false
p isPrime(-7) # => false
p isPrime(7) # => true
p isPrime(61) # => true
p isPrime(89) # => true
p isPrime(17) # => true
p isPrime(2) # => true
p isPrime(3) # => true

p isPrimeBuiltIn(4) # => false
p isPrimeBuiltIn(100) # => false
p isPrimeBuiltIn(999) # => false
p isPrimeBuiltIn(958_297) # => false
p isPrimeBuiltIn(-7) # => false
p isPrimeBuiltIn(7) # => true
p isPrimeBuiltIn(61) # => true
p isPrimeBuiltIn(89) # => true
p isPrimeBuiltIn(17) # => true
p isPrimeBuiltIn(2) # => true
p isPrimeBuiltIn(3) # => true

# Array.diff

# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

# It should remove all values from list a, which are present in list b keeping their order.

# array_diff([1,2],[1]) == [2]

# If a value is present in b, all of its occurrences must be removed from the other:

# array_diff([1,2],[1]) == [2]

def array_diff(a, b)
  a.reject { |el| b.include? el }
end

# def array_diff(a, b)
#   a - b
# end

p array_diff([1, 2], [1]) # => [2]
p array_diff([1, 2, 2], [1]) # => [2,2]
p array_diff([1, 2, 2], [2]) # => [1]
p array_diff([1, 2, 2], []) # => [1,2,2]
p array_diff([], [1, 2]) # => []
p array_diff([1, 2, 3], [1, 2]) # => [3]

# Maximum subarray sum

# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]

# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

def max_sequence(arr)
  # return 0 if arr.size == 0
  return 0 if arr.all?(&:negative?)

  max = 0
  arrStart = 0
  while arrStart < arr.size
    arrEnd = arr.size - 1
    while arrStart <= arrEnd
      max = max < arr.slice(arrStart..arrEnd).sum ? arr.slice(arrStart..arrEnd).sum : max
      arrEnd -= 1
    end
    arrStart += 1
  end
  max
end

p max_sequence([]) # => 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # => 6
p max_sequence([11]) # => 11
p max_sequence([-32]) # => 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) # => 12

# Decode the Morse code

# In this kata you have to write a simple Morse code decoder. While the Morse code is now mostly superseded by voice and digital data communication channels, it still has its use in some applications around the world.

# The Morse code encodes every character as a sequence of "dots" and "dashes". For example, the letter A is coded as ·−, letter Q is coded as −−·−, and digit 1 is coded as ·−−−−. The Morse code is case-insensitive, traditionally capital letters are used. When the message is written in Morse code, a single space is used to separate the character codes and 3 spaces are used to separate words. For example, the message HEY JUDE in Morse code is ···· · −·−−   ·−−− ··− −·· ·.

# NOTE: Extra spaces before or after the code have no meaning and should be ignored.

# In addition to letters, digits and some punctuation, there are some special service codes, the most notorious of those is the international distress signal SOS (that was first issued by Titanic), that is coded as ···−−−···. These special codes are treated as single special characters, and usually are transmitted as separate words.

# Your task is to implement a function that would take the morse code as input and return a decoded human-readable string.

# For example:

# decodeMorse('.... . -.--   .--- ..- -.. .')
# #should return "HEY JUDE"

# NOTE: For coding purposes you have to use ASCII characters . and -, not Unicode characters.

# The Morse code table is preloaded for you as a dictionary, feel free to use it:

#     Coffeescript/C++/Go/JavaScript/Julia/PHP/Python/Ruby/TypeScript: MORSE_CODE['.--']
#     C#: MorseCode.Get(".--") (returns string)
#     F#: MorseCode.get ".--" (returns string)
#     Elixir: @morse_codes variable (from use MorseCode.Constants). Ignore the unused variable warning for morse_codes because it's no longer used and kept only for old solutions.
#     Elm: MorseCodes.get : Dict String String
#     Haskell: morseCodes ! ".--" (Codes are in a Map String String)
#     Java: MorseCode.get(".--")
#     Kotlin: MorseCode[".--"] ?: "" or MorseCode.getOrDefault(".--", "")
#     Racket: morse-code (a hash table)
#     Rust: MORSE_CODE
#     Scala: morseCodes(".--")
#     Swift: MorseCode[".--"] ?? "" or MorseCode[".--", default: ""]

#     C: provides parallel arrays, i.e. morse[2] == "-.-" for ascii[2] == "C"

#     NASM: a table of pointers to the morsecodes, and a corresponding list of ascii symbols

# All the test strings would contain valid Morse code, so you may skip checking for errors and exceptions. In C#, tests will fail if the solution code throws an exception, please keep that in mind. This is mostly because otherwise the engine would simply ignore the tests, resulting in a "valid" solution.

# Good luck!

# def decodeMorse(morseCode)
#   morseCode.split("   ").map do |word|
#     word.split(" ").map{ |char|  MORSE_CODE[char] }.join("")
#   end
#   .join(" ")
#   .strip
# end

# def decodeMorse(morseCode)
#   morseCode.split("   ").map { |word| word.split(" ").map { |char| MORSE_CODE[char] }.join("") }.join(" ").strip
# end

# p decodeMorse('.... . -.--   .--- ..- -.. .') #=> 'HEY JUDE'

# Take a Ten Minutes Walk

# You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

# Note: you will always receive a valid array (string in COBOL) containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

def is_valid_walk(walk)
  return false if walk.size != 10

  walk_coordinates = { 'x' => 0, 'y' => 0 }
  walk.each do |dir|
    case dir
    when 'n'
      walk_coordinates['y'] += 1
    when 's'
      walk_coordinates['y'] -= 1
    when 'e'
      walk_coordinates['x'] += 1
    when 'w'
      walk_coordinates['x'] -= 1
    end
  end
  walk_coordinates['x'] == 0 && walk_coordinates['y'] == 0
end

p is_valid_walk(%w[n s n s n s n s n s]) # => 'true'
p is_valid_walk(%w[w e w e w e w e w e w e]) # => 'false'
p is_valid_walk(['w']) # => 'false'
p is_valid_walk(%w[n n n s n s n s n s]) # => 'false'

# SantaClausable Interface

# You probably know, that in Javascript (and also Ruby) there is no concept of interfaces. There is only a concept of inheritance, but you can't assume that a certain method or property exists, just because it exists in the parent prototype / class. We want to find out, whether a given object fulfils the requirements to implement the "SantaClausable" interface. We need to implement a method which checks for this interface.

# Rules

# The SantaClausable interface is implemented, if all of the following methods are defined on an object:

#     sayHoHoHo() / say_ho_ho_ho
#     distributeGifts() / distribute_gifts
#     goDownTheChimney() / go_down_the_chimney

# Example

# class SantaClaus
#     def say_ho_ho_ho
#         # Ho Ho Ho!
#     end

#     def distribute_gifts
#         # Gifts for all!
#     end

#     def go_down_the_chimney
#         # Whoosh!
#     end
# end

# class NotSantaClaus
#     def say_ho_ho_ho
#     end
# end

# is_santa_clausable(SantaClaus.new) # must return TRUE
# is_santa_clausable(NotSantaClaus.new) # must return FALSE

def is_santa_clausable(obj)
  obj.class.method_defined?(:say_ho_ho_ho) && obj.class.method_defined?(:distribute_gifts) && obj.class.method_defined?(:go_down_the_chimney)
end

class SantaClaus
  def say_ho_ho_ho
    # Ho Ho Ho!
  end

  def distribute_gifts
    # Gifts for all!
  end

  def go_down_the_chimney
    # Whoosh!
  end
end

class NotSantaClaus
  def say_ho_ho_ho; end
end

p is_santa_clausable(SantaClaus.new) # => true
p is_santa_clausable(NotSantaClaus.new) # => false

# Disemvowel Trolls

# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and return a new string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

# Note: for this kata y isn't considered a vowel.

def disemvowel(str)
  str.chars.reject { |char| %w[a e i o u].include?(char.downcase) }.join
end

p disemvowel('This website is for losers LOL!') # => "Ths wbst s fr lsrs LL!"

# Sum Arrays

# Write a function that takes an array of numbers and returns the sum of the numbers. The numbers can be negative or non-integer. If the array does not contain any numbers then you should return 0.

# Examples

# Input: [1, 5.2, 4, 0, -1]
# Output: 9.2

# Input: []
# Output: 0

# Input: [-2.398]
# Output: -2.398
# Assumptions

#     You can assume that you are only given numbers.
#     You cannot assume the size of the array.
#     You can assume that you do get an array and if the array is empty, return 0.

# What We're Testing

# We're testing basic loops and math operations. This is for beginners who are just learning loops and math operations.
# Advanced users may find this extremely easy and can easily write this in one line.

# Sum Numbers
def sum(numbers)
  numbers.size == 0 ? 0 : numbers.inject(:+)
end

p sum([]) # => 0
p sum([1, 5.2, 4, 0, -1]) # => 9.2

# The Supermarket Queue

# There is a queue for the self-checkout tills at the supermarket. Your task is write a function to calculate the total time required for all the customers to check out!
# input

#     customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
#     n: a positive integer, the number of checkout tills.

# output

# The function should return an integer, the total time required.
# Important

# Please look at the examples and clarifications below, to ensure you understand the task correctly :)
# Examples

# queue_time([5,3,4], 1)
# should return 12
# because when n=1, the total time is just the sum of the times

# queue_time([10,2,3,3], 2)
# should return 10
# because here n=2 and the 2nd, 3rd, and 4th people in the
# queue finish before the 1st person has finished.

# queue_time([2,3,10], 2)
# should return 12

# Clarifications

#     There is only ONE queue serving many tills, and
#     The order of the queue NEVER changes, and
#     The front person in the queue (i.e. the first element in the array/list) proceeds to a till as soon as it becomes free.

# N.B. You should assume that all the test input will be valid, as specified above.

# P.S. The situation in this kata can be likened to the more-computer-science-related idea of a thread pool, with relation to running multiple processes at the same time: https://en.wikipedia.org/wiki/Thread_pool

# def queue_time(customers, n)
#   return 0 if customers.size == 0
#   return customers.max if n >= customers.size
#   time = 0
#   currentCustomers = Array.new(n, 0)
#   currentCustomers.map! { |c| customers.shift }
#   # stop looping when customers.size equals 0 and all currentCustomers are equal to 0
#   until customers.size == 0 && currentCustomers.all?(0) do
#     if currentCustomers.include?(0)
#       # for any zero currentCustomers replace it with the next customer if there are still customers available
#       currentCustomers.map! {|c| c == 0  && customers.size > 0 ? customers.shift : c }
#     end
#     if currentCustomers.any?{ |c| c > 0 }
#       # for any non zero currentCustomer subtract 1
#       currentCustomers.map! { |c| c > 0 ? c - 1 : 0 }
#     end
#     time += 1
#   end
#   time
# end

# Refactored
def queue_time(customers, till_count)
  tills = Array.new(till_count, 0)
  customers.each do |service_time|
    tills[tills.index(tills.min)] += service_time
  end
  tills.max
end

p queue_time([], 1) # => 0
p queue_time([5], 1) # => 5
p queue_time([2], 5) # => 2
p queue_time([1, 2, 3, 4, 5], 1) # => 15
p queue_time([1, 2, 3, 4, 5], 100) # => 5
p queue_time([2, 2, 3, 3, 4, 4], 2) # => 9
p queue_time([35, 9, 87], 2) # => 96
p queue_time([35, 938, 53, 76, 938, 8, 847, 834, 584, 165], 4) # => 1492
p queue_time([74, 1, 485, 15, 9, 1, 2, 936, 348, 6, 820, 4, 3, 387, 4, 975, 439, 5, 512, 15, 69, 464, 32, 3, 10, 26, 8, 3, 9, 234, 61, 5, 48, 89, 56, 44, 9, 3, 87, 9, 80, 13, 98, 49, 858, 8, 55, 57, 7, 75, 12, 92, 3, 53, 66, 39, 1, 456, 7, 195, 662, 5, 2, 10], 49) # => 975
p queue_time([5, 6, 678, 81, 72, 151, 933, 9, 41, 568, 92, 18, 861, 58, 2, 260, 599, 8, 1, 6, 8, 900, 9, 535, 552, 42, 17, 7, 9, 1, 68, 9, 2, 94, 83, 28, 4, 2, 39, 2, 293, 36, 4, 94, 620, 983, 56, 2, 23, 4, 634, 89, 52, 9, 89, 5, 177, 809, 48, 5, 558, 86, 6, 355, 8, 43, 70, 65, 294, 80, 4, 8, 319, 816, 20, 7, 6, 9], 65) # => 983

# Volume of a Cuboid

# Bob needs a fast way to calculate the volume of a cuboid with three values: the length, width and height of the cuboid. Write a function to help Bob with this calculation.

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

p get_volume_of_cuboid(2, 3, 4) # => 24
p get_volume_of_cuboid(4, 6, 8) # => 192
p get_volume_of_cuboid(7, 14, 26) # => 2548

# Bit Counting

# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

def count_bits(n)
  n.to_s(2).count '1'
end

p count_bits(0) # => 0
p count_bits(4) # => 1
p count_bits(7) # => 3
p count_bits(9) # => 2
p count_bits(10) # => 2

# Get the mean of an array

# It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.

# Return the average of the given array rounded down to its nearest integer.

# The array will never be empty.

def get_average(marks)
  marks.sum / marks.size
end

p get_average([2, 2, 2, 2]) # => 2
p get_average([1, 5, 87, 45, 8, 8]) # => 25
p get_average([2, 5, 13, 20, 16, 16, 10]) # => 11
p get_average([1, 2, 15, 15, 17, 11, 12, 17, 17, 14, 13, 15, 6, 11, 8, 7]) # => 11

# Abbreviate a Two Word Name

# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

# The output should be two capital letters with a dot separating them.

# It should look like this:

# Sam Harris => S.H

# patrick feeney => P.F

def abbrev_name(name)
  name.split(' ').map { |word| word[0].upcase }.join('.')
end

p abbrev_name('Sam Harris') # => "S.H"
p abbrev_name('Patrick Feenan') # => "P.F"
p abbrev_name('Evan Cole') # => "E.C"
p abbrev_name('P Favuzzi') # => "P.F"
p abbrev_name('David Mendieta') # => "D.M"

# First non-repeating character

# Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

def first_non_repeating_letter(s)
  s.chars.find(-> { '' }) { |char| s.downcase.chars.index(char.downcase) == s.downcase.chars.rindex(char.downcase) }
end

p first_non_repeating_letter('a') # =>  'a'
p first_non_repeating_letter('stress') # =>  't'
p first_non_repeating_letter('sTreSS') # =>  'T'
p first_non_repeating_letter('moonmen') # =>  'e'
p first_non_repeating_letter('') # =>  ''

# Simple number triangle

# Consider the number triangle below, in which each number is equal to the number above plus the number to the left. If there is no number above, assume it's a 0.

# 1
# 1 1
# 1 2 2
# 1 3 5 5
# 1 4 9 14 14
# 1 5 14 28 42 42

# The triangle has 5 rows and the sum of the last row is sum([1,4,9,14,14]) = 42.

# You will be given an integer n and your task will be to return the sum of the last row of a triangle of n rows.

# In the example above:

# solve(5) = 42

def solve(n)
  arr = [Array.new(n, 0)]
  arr[0][0] = 1
  (1..n - 1).each do |row|
    arr << Array.new(n, 0)
    (0..row).each do |i|
      left = i - 1 < 0 ? 0 : arr[row][i - 1]
      above = arr[row - 1][i]
      arr[row][i] = left + above
    end
  end
  arr.last.sum
end

p solve(3) # => 5
p solve(4) # => 14
p solve(5) # => 42
p solve(6) # => 132
p solve(7) # => 429
p solve(8) # => 1430
p solve(20) # => 6564120420

# SevenAte9

# Write a function that removes every lone 9 that is inbetween 7s.

# "79712312" --> "7712312"
# "79797"    --> "777"

def seven_ate9(str)
  str.sub!('797', '77') while str.include? '797'
  str
end

p seven_ate9('165561786121789797') # => '16556178612178977'
p seven_ate9('797') # => '77'
p seven_ate9('7979797') # => '7777'

# Merge two sorted arrays into one

# You are given two sorted arrays that both only contain integers. Your task is to find a way to merge them into a single one, sorted in asc order. Complete the function mergeArrays(arr1, arr2), where arr1 and arr2 are the original sorted arrays.

# You don't need to worry about validation, since arr1 and arr2 must be arrays with 0 or more Integers. If both arr1 and arr2 are empty, then just return an empty array.

# Note: arr1 and arr2 may be sorted in different orders. Also arr1 and arr2 may have same integers. Remove duplicated in the returned result.
# Examples (input -> output)

# * [1, 2, 3, 4, 5], [6, 7, 8, 9, 10] -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# * [1, 3, 5, 7, 9], [10, 8, 6, 4, 2] -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10

def merge_arrays(arr1, arr2)
  (arr1 + arr2).sort.uniq
end

p merge_arrays([1, 2, 3, 4], [5, 6, 7, 8]) #=> [1, 2, 3, 4, 5, 6, 7, 8]
p merge_arrays([1, 3, 5, 7, 9], [10, 8, 6, 4, 2]) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p merge_arrays([1, 3, 5, 7, 9, 11, 12], [1, 2, 3, 4, 5, 10, 12]) #=> [1, 2, 3, 4, 5, 7, 9, 10, 11, 12]

# Count the divisors of a number

# Count the number of divisors of a positive integer n.

# Random tests go up to n = 500000.
# Examples (input --> output)

# 4 --> 3 (1, 2, 4)
# 5 --> 2 (1, 5)
# 12 --> 6 (1, 2, 3, 4, 6, 12)
# 30 --> 8 (1, 2, 3, 5, 6, 10, 15, 30)

def divisors(n)
  (1..n).filter { |div| n % div == 0 }.size
end

p divisors(1) # => 1
p divisors(10) # => 4
p divisors(11) # => 2
p divisors(25) # => 3
p divisors(54) # => 8

# Is it a palindrome?

# Write a function that checks if a given string (case insensitive) is a palindrome.

def is_palindrome(str)
  str.downcase == str.downcase.reverse
end

p is_palindrome('a') # => true
p is_palindrome('aba') # => true
p is_palindrome('Abba') # => true
p is_palindrome('hello') # => false
p is_palindrome('Bob') # => true
p is_palindrome('Madam') # => true
p is_palindrome('AbBa') # => true
p is_palindrome('') # => true

# Difference of Volumes of Cuboids

# In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.

# For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

# Your function will be tested with pre-made examples as well as random ones.

# If you can, try writing it in one line of code.

def find_difference(a, b)
  (a.reduce(:*) - b.reduce(:*)).abs
end

p find_difference([3, 2, 5], [1, 4, 4]) # => 14
p find_difference([9, 7, 2], [5, 2, 2]) # => 106

# Odd or Even?

# Task:

# Given a list of integers, determine whether the sum of its elements is odd or even.

# Give your answer as a string matching "odd" or "even".

# If the input array is empty consider it as: [0] (array with a zero).
# Examples:

# Input: [0]
# Output: "even"

# Input: [0, 1, 4]
# Output: "odd"

# Input: [0, -1, -5]
# Output: "even"

# Have fun!

def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end

p odd_or_even([0]) # => "even"
p odd_or_even([1]) # => "odd"
p odd_or_even([]) # => "even"
p odd_or_even([-1023, 1, -2]) # => "even"
p odd_or_even([-1023, -1, 3]) # => "odd"

# Give me a Diamond

# Jamie is a programmer, and James' girlfriend. She likes diamonds, and wants a diamond string from James. Since James doesn't know how to make this happen, he needs your help.
# Task

# You need to return a string that looks like a diamond shape when printed on the screen, using asterisk (*) characters. Trailing spaces should be removed, and every line must be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is not possible to print a diamond of even or negative size.
# Examples

# A size 3 diamond:

#  *
# ***
#  *

# ...which would appear as a string of " *\n***\n *\n"

# A size 5 diamond:

#   *
#  ***
# *****
#  ***
#   *

# ...that is:

# "  *\n ***\n*****\n ***\n  *\n"

def diamond(n)
  return nil if n.even? || n <= 0

  upper_half = (1..n).to_a.select(&:odd?).map do |line|
    ('*' * line).center(n, ' ').rstrip + "\n"
  end
  (upper_half + upper_half[0, n / 2].reverse).join('')
end

p diamond(1) # => "*\n")
p diamond(3) # => " *\n***\n *\n")
p diamond(5) # => "  *\n ***\n*****\n ***\n  *\n")
p diamond(0) # => nil)
p diamond(-3) # => nil)
p diamond(2) # => nil)

# What is between?

# Complete the function that takes two integers (a, b, where a < b) and return an array of all integers between the input parameters, including them.

# For example:

# a = 1
# b = 4
# --> [1, 2, 3, 4]

def between(a, b)
  (a..b).to_a
end

p between(1, 4) #=>  [1, 2, 3, 4]
p between(-2, 2) #=>  [-2, -1, 0, 1, 2]

# Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!

# The number 89 is the first integer with more than one digit that fulfills the property partially introduced in the title of this kata. What's the use of saying "Eureka"? Because this sum gives the same number.

# In effect: 89 = 8^1 + 9^2

# The next number in having this property is 135.

# See this property again: 135 = 1^1 + 3^2 + 5^3

# We need a function to collect these numbers, that may receive two integers a, b that defines the range [a, b] (inclusive) and outputs a list of the sorted numbers in the range that fulfills the property described above.

# Let's see some cases:

# sum_dig_pow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

# sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]

# If there are no numbers of this kind in the range [a, b] the function should output an empty list.

# sum_dig_pow(90, 100) == []

def sum_dig_pow(a, b)
  (a..b).select { |num| num.to_s.chars.each_with_index.reduce(0) { |memo, (num, index)| memo + num.to_i**(index + 1) } == num }
end

def sum_dig_pow(a, b)
  (a..b).select { |num| num == num.to_s.chars.map.with_index(1) { |e, idx| e.to_i**idx }.reduce(:+) }
end

p sum_dig_pow(1, 10) # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
p sum_dig_pow(1, 100) # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
p sum_dig_pow(10, 100) # =>  [89]
p sum_dig_pow(90, 100) # => []
p sum_dig_pow(90, 150) # => [135]
p sum_dig_pow(50, 150) # => [89, 135]
p sum_dig_pow(10, 150) # => [89, 135]

# Grasshopper - Check for factor

# This function should test if the factor is a factor of base.

# Return true if it is a factor or false if it is not.
# About factors

# Factors are numbers you can multiply together to get another number.

# 2 and 3 are factors of 6 because: 2 * 3 = 6

#     You can find a factor by dividing numbers. If the remainder is 0 then the number is a factor.
#     You can use the mod operator (%) in most languages to check for a remainder

# For example 2 is not a factor of 7 because: 7 % 2 = 1

# Note: base is a non-negative number, factor is a positive number.

def check_for_factor(base, factor)
  base % factor == 0
end

p check_for_factor(10, 2) # => true
p check_for_factor(63, 7) # => true
p check_for_factor(2450, 5) # => true
p check_for_factor(24_612, 3) # => true
p check_for_factor(9, 2) # => false
p check_for_factor(653, 7) # => false
p check_for_factor(2453, 5) # => false
p check_for_factor(24_617, 3) # => false

# Grasshopper - Debug sayHello

# Debugging sayHello function

# The starship Enterprise has run into some problem when creating a program to greet everyone as they come aboard. It is your job to fix the code and get the program working again!

# Example output:

# Hello, Mr. Spock

def say_hello(name)
  "Hello, #{name}"
end

p say_hello('Mr. Spock') # => 'Hello, Mr. Spock'
p say_hello('Captain Kirk') # => 'Hello, Captain Kirk'
p say_hello('Liutenant Uhura') # => 'Hello, Liutenant Uhura'
p say_hello('Dr. McCoy') # => 'Hello, Dr. McCoy'
p say_hello('Mr. Scott') # => 'Hello, Mr. Scott'

# Invert values

# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []

def invert(list)
  list.map { |num| num * -1 }
end

p invert([1, 2, 3, 4, 5]) # => [-1,-2,-3,-4,-5]
p invert([1, -2, 3, -4, 5]) # => [-1,2,-3,4,-5]
p invert([0]) # => [0]
p invert([-1, 0, 1]) # => [1,0,-1]
p invert([]) # => []

# You Can't Code Under Pressure #1

# Code as fast as you can! You need to double the integer and return it.

def double_integer(i)
  i * 2
end

p double_integer(6) # => 12

# Equal Sides Of An Array

# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

# For example:

# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

# Let's look at another one.
# You are given the array {1,100,50,-51,1,1}:
# Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

# Last one:
# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

# Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

# Output:
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

# Note:
# If you are given an array with multiple answers, return the lowest correct index.

def find_even_index(arr)
  arr.each_with_index.find_index { |_num, idx| arr[0...idx].inject(0) { |memo, num| memo + num } == arr[idx + 1..arr.size].inject(0) { |memo, num| memo + num } } || -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) # => 3
p find_even_index([1, 100, 50, -51, 1, 1]) # => 1
p find_even_index([1, 2, 3, 4, 5, 6]) # => -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) # => 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) # => 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) # => 6
p find_even_index(Array(1..100)) # => -1
p find_even_index([0, 0, 0, 0, 0]) # => 0
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) # => 3
p find_even_index(Array(-100..-1)) # => -1

# Training JS #7: if..else and ternary operator

# number 	price (cents)
# n < 5 	100
# n >= 5 and n < 10 	95
# n >= 10 	90

def sale_hotdogs(n)
  return n * 100 if n < 5
  return n * 95 if n >= 5 && n < 10
  return n * 90 if n >= 10
end

p sale_hotdogs(0) # => 0
p sale_hotdogs(1) # => 100
p sale_hotdogs(2) # => 200
p sale_hotdogs(3) # => 300
p sale_hotdogs(4) # => 400
p sale_hotdogs(5) # => 475
p sale_hotdogs(9) # => 855
p sale_hotdogs(10) # => 900
p sale_hotdogs(11) # => 990
p sale_hotdogs(100) # => 9000

# Odd-Even String Sort

# Given a string s. You have to return another string such that even-indexed and odd-indexed characters of s are grouped and groups are space-separated (see sample below)

# Note:
# 0 is considered to be an even index.
# All input strings are valid with no spaces

# input: 'CodeWars'

# output 'CdWr oeas'

# S[0] = 'C'
# S[1] = 'o'
# S[2] = 'd'
# S[3] = 'e'
# S[4] = 'W'
# S[5] = 'a'
# S[6] = 'r'
# S[7] = 's'

# Even indices 0, 2, 4, 6, so we have 'CdWr' as the first group
# odd ones are 1, 3, 5, 7, so the second group is 'oeas'
# And the final string to return is 'Cdwr oeas'
# Enjoy.

def sort_my_string(s)
  arr = [[], []]
  s.chars.each_with_index { |char, idx| idx.even? ? arr[0] << char : arr[1] << char }

  "#{arr[0].join('')} #{arr[1].join('')}"
end

p sort_my_string('CodeWars') # => "CdWr oeas"
p sort_my_string("YCOLUE'VREER") # => "YOU'RE CLEVER"

# Remove anchor from URL

# Complete the function/method so that it returns the url with anything after the anchor (#) removed.
# Examples

# "www.codewars.com#about" --> "www.codewars.com"
# "www.codewars.com?page=1" -->"www.codewars.com?page=1"

def remove_url_anchor(url)
  url.split('#')[0]
end

p remove_url_anchor('www.codewars.com#about') # => "www.codewars.com"
p remove_url_anchor('www.codewars.com/katas/?page=1#about') # => "www.codewars.com/katas/?page=1"
p remove_url_anchor('www.codewars.com/katas/') # => "www.codewars.com/katas/"

# Find the odd int

# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.
# Examples

# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

def find_it(seq)
  seq.uniq.find { |num| seq.count(num).odd? }
end

p find_it([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]) # => 5
p find_it([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5]) # => -1
p find_it([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]) # => 5
p find_it([10]) # => 10
p find_it([1, 1, 1, 1, 1, 1, 10, 1, 1, 1, 1]) # => 10

# Merge in 2048

# Remember the game 2048? http://gabrielecirulli.github.io/2048/

# The main part of this game is merging identical tiles in a row.

#     Implement a function that models the process of merging all of the tile values in a single row.
#     This function takes the array line as a parameter and returns a new array with the tile values from line slid towards the front of the array (index 0) and merged.
#     A given tile can only merge once.
#     Empty grid squares are represented as zeros.
#     Your function should work on arrays containing arbitrary number of elements.

# Examples

# merge([2,0,2,2])  -->  [4,2,0,0]

# Another example with repeated merges:

# merge([4,4,8,16])  -->  [8,8,16,0]
# merge([8,8,16,0])  -->  [16,16,0,0]
# merge([16,16,0,0]) -->  [32,0,0,0]

def merge(row)
  nums = row.reject(&:zero?)
  result = []
  result << (nums[0] == nums[1] ? nums.shift + nums.shift : nums.shift) until nums.empty?
  result + [0] * (row.size - result.size)
end

p merge([2, 0, 2, 2]) # => [4,2,0,0]
p merge([2, 0, 2, 4]) # => [4,4,0,0]
p merge([0, 0, 2, 2]) # => [4,0,0,0]

# Highest and Lowest

# n this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
# Examples

# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"

# Notes

# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

def high_and_low(numbers)
  numbers.split(' ').map(&:to_i).minmax.reverse.join(' ')
end

p high_and_low('8 3 -5 42 -1 0 0 -9 4 7 4 -4') # => "42 -9"
p high_and_low('1 2 3') # => "3 1"

# Stop gninnipS My sdroW!

# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

# Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"

def spin_words(string)
  string.split(' ').map { |word| word.size > 4 ? word.chars.reverse.join('') : word }.join(' ')
end

p spin_words('Welcome') # => "emocleW"
p spin_words('Hey fellow warriors') # => "Hey wollef sroirraw"

# Sum of Digits / Digital Root

# Digital root is the recursive sum of all the digits in a number.

# Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
# Examples

#     16  -->  1 + 6 = 7
#    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
# 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
# 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

def digital_root(n)
  sumOfDigits = n.to_s
  sumOfDigits = sumOfDigits.chars.map(&:to_i).reduce(:+).to_s while sumOfDigits.size > 1
  sumOfDigits.to_i
end

p digital_root(16) # => 7
p digital_root(942) # => 6
p digital_root(132_189) # => 6
p digital_root(493_193) # => 2
p digital_root(5) # => 5

# Char Code Calculation

# Given a string, turn each character into its ASCII character code and join them together to create a number - let's call this number total1:

#   'ABC' --> 'A' = 65, 'B' = 66, 'C' = 67 --> 656667

# Then replace any incidence of the number 7 with the number 1, and call this number 'total2':

# total1 = 656667
#               ^
# total2 = 656661
#               ^

# Then return the difference between the sum of the digits in total1 and total2:

#   (6 + 5 + 6 + 6 + 6 + 7)
# - (6 + 5 + 6 + 6 + 6 + 1)
# -------------------------
#                        6

def calc(s)
  s.bytes.map(&:to_s).inject(:+).chars.map(&:to_i).inject(:+) - s.bytes.map(&:to_s).inject(:+).gsub('7', '1').chars.map(&:to_i).inject(:+)
end

p calc('ABC') # => 6
p calc('abcdef') # => 6
p calc('ifkhchlhfd') # => 6
p calc('aaaaaddddr') # => 30
p calc('jfmgklf8hglbe') # => 6
p calc('jaam') # => 12
p calc('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ') # => 96

#  Who likes it?

# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

# Note: For 4 or more names, the number in "and 2 others" simply increases.

def likes(names)
  text = ''
  text = if names.size == 0
           'no one likes this'
         elsif names.size == 1
           "#{names[0]} likes this"
         elsif names.size == 2
           "#{names[0]} and #{names[1]} like this"
         elsif names.size == 3
           "#{names[0]}, #{names[1]} and #{names[2]} like this"
         else
           "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
         end
  text
end

p likes([]) # => 'no one likes this'
p likes(['Peter']) # => 'Peter likes this'
p likes(%w[Jacob Alex]) # => 'Jacob and Alex like this'
p likes(%w[Max John Mark]) # => 'Max, John and Mark like this'
p likes(%w[Alex Jacob Mark Max]) # => 'Alex, Jacob and 2 others like this'

# Find the missing letter

# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# ['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

# ["a","b","c","d","f"] -> "e"
# ["O","Q","R","S"] -> "P"

# (Use the English alphabet with 26 letters!)

# Have fun coding it and please don't forget to vote and rank this kata! :-)

# I have also created other katas. Take a look if you enjoyed this kata!

# def find_missing_letter(arr)
#   (arr[0]..arr[-1]).to_a.select { |char| !arr.include?(char) }.first
# end

def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first
end

p find_missing_letter(%w[a b c d f]) # => "e"
p find_missing_letter(%w[O Q R S]) # => "P"
p find_missing_letter(%w[b d]) # => "c"
p find_missing_letter(%w[a b d]) # => "c"
p find_missing_letter(%w[b d e]) # => "c"

# Calculate Pyramid Height

#   Your task is to calculate the maximum possible height of a perfectly square pyramid (the number of complete layers) that we can build, given n number of cubes as the argument.

#     The top layer is always only 1 cube and is always present.
#     There are no hollow areas, meaning each layer must be fully populated with cubes.
#     The layers are thus so built that the corner cube always covers the inner 25% of the corner cube below it and so each row has one more cube than the one below it.

# If you were given only 5 cubes, the lower layer would have 4 cubes and the top 1 cube would sit right in the middle of them, where the lower 4 cubes meet.

# If you were given 14 cubes, you could build a pyramid of 3 layers, but 13 wouldn't be enough as you would be missing one cube, so only 2 layers would be complete and some cubes left over!

# What is the tallest pyramid possible we can build from the given number of cubes? Simply return the number of complete layers.
# Examples

#  4  -->  1
#  5  -->  2
# 13  -->  2
# 14  -->  3

def pyramid_height(n)
  level = 0
  cubes = 0
  while cubes < n
    cubes += (level + 1)**2
    level += 1 if cubes <= n
  end
  level
end

p pyramid_height(1) # =>  1
p pyramid_height(4) # =>  1
p pyramid_height(5) # =>  2
p pyramid_height(29) # =>  3
p pyramid_height(30) # =>  4
p pyramid_height(31) # =>  4
p pyramid_height(1240) # =>  15
p pyramid_height(1241) # =>  15
p pyramid_height(1239) # =>  14
p pyramid_height(1496) # =>  16
p pyramid_height(1495) # =>  15
p pyramid_height(4324) # =>  23
p pyramid_height(4323) # =>  22
p pyramid_height(4899) # =>  23
p pyramid_height(4900) # =>  24
p pyramid_height(5524) # =>  24
p pyramid_height(5525) # =>  25
p pyramid_height(6200) # =>  25
p pyramid_height(6201) # =>  26
p pyramid_height(6254) # =>  26

# Friend or Foe?

#   Make a program that filters a list of strings and returns a list with only your friends name in it.

# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...

# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

# i.e.

# friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]

# Note: keep the original order of the names in the output.

def friend(friends)
  friends.reject { |name| name.size != 4 }
end

p friend(%w[Ryan Kieran Mark]) # => ["Ryan", "Mark"]
p friend(['Ryan', 'Jimmy', '123', '4', 'Cool Man']) # => ["Ryan"]
p friend(%w[Jimm Cari aret truehdnviegkwgvke sixtyiscooooool]) # => ["Jimm", "Cari", "aret"]
p friend(%w[Love Your Face 1]) # => ["Love", "Your", "Face"]

# Find the anonymous function

# # Find the anonymous function in the given array and use the function to filter the array
# Input
# Your input. First Parameter will be an array with an anonymous function somewhere in the lot, The second Parameter will be an array which you will filter using the anonymous function you find.
# Output
# Your output. Output a filtered version of the second parameter using the function found in the first parameter.

def find_function(func, arr)
  arr.select { |num| func.find { |el| el.is_a?(Proc) }.call(num) }
end

p find_function([->(a) { a.even? }, 9, 3, 1, 0], [1, 2, 3, 4]) # => [2,4])
p find_function([9, 3, ->(a) { a.odd? }, 1, 0], [1, 2, 3, 4]) # => [1,3])
p find_function([9, 3, ->(a) { a % 13 == 0 }, 1, 0], [1, 2, 3, 4]) # => [])
p find_function([9, 3, ->(a) { a % 13 != 0 }, 1, 0], [1, 2, 3, 4]) # => [1,2,3,4])
p find_function([5, 'a', ->(a) { a * 4 != 0 }, 1, 0], [0, 1, 2, 3, 4]) # => [1,2,3,4])

# Grasshopper - Terminal game move function

# Terminal game move function

# In this game, the hero moves from left to right. The player rolls the dice and moves the number of spaces indicated by the dice two times.

# Create a function for the terminal game that takes the current position of the hero and the roll (1-6) and return the new position.
# Example:

# move(3, 6) should equal 15

def move(position, roll)
  position += roll * 2
end

p move(0, 4) # =>  8
p move(3, 6) # =>  15
p move(2, 5) # =>  12

# Speed Control

# n John's car the GPS records every s seconds the distance travelled from an origin (distances are measured in an arbitrary but consistent unit). For example, below is part of a record with s = 15:

# x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]

# The sections are:

# 0.0-0.19, 0.19-0.5, 0.5-0.75, 0.75-1.0, 1.0-1.25, 1.25-1.50, 1.5-1.75, 1.75-2.0, 2.0-2.25

# We can calculate John's average hourly speed on every section and we get:

# [45.6, 74.4, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0]

# Given s and x the task is to return as an integer the *floor* of the maximum average speed per hour obtained on the sections of x. If x length is less than or equal to 1 return 0 since the car didn't move.
# Example:

# with the above data your function gps(s, x)should return 74
# Note

# With floats it can happen that results depends on the operations order. To calculate hourly speed you can use:

#  (3600 * delta_distance) / s.

def gps(s, x)
  return 0 if x.length <= 1

  x.each_cons(2).map { |a, b| (b - a) * 3600 / s }.max.floor
end

x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]
s = 20
u = 41
p gps(s, x)
p u
x = [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25]
s = 12
u = 219
p gps(s, x)
p u
x = [0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84]
s = 20
u = 80
p gps(s, x)
p u
x = [0.0, 0.01, 0.36, 0.6, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15]
s = 14
u = 90
p gps(s, x)
p u
x = [0.0, 0.02, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8]
s = 17
u = 72
p gps(s, x)
p u
x = [0.0, 0.24, 0.48, 0.72, 0.96, 1.2, 1.44, 1.68, 1.92, 2.16, 2.4]
s = 12
u = 72
p gps(s, x)
p u
x = [0.0, 0.02, 0.44, 0.66, 0.88, 1.1, 1.32, 1.54, 1.76]
s = 17
u = 88
p gps(s, x)
p u
x = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.32, 1.54, 1.76, 1.98, 2.2, 2.42, 2.76, 2.99, 3.22, 3.45]
s = 16
u = 76
p gps(s, x)
p u
x = [0.0, 0.01, 0.36, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25, 2.5, 2.75, 3.0, 3.25, 3.5, 3.75, 4.0, 4.25, 4.5, 4.75]
s = 17
u = 82
p gps(s, x)
p u
x = [0.0, 0.2, 0.4, 0.69, 0.92, 1.15, 1.38, 1.61, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36]
s = 19
u = 58
p gps(s, x)
p u
x = []
s = 19
u = 0
p gps(s, x)
p u
x = [0.0]
s = 19
u = 0
p gps(s, x)
p u

# Predict your age!

# My grandfather always predicted how old people would get, and right before he passed away he revealed his secret!

# In honor of my grandfather's memory we will write a function using his formula!

#   Take a list of ages when each of your great-grandparent died.
#   Multiply each number by itself.
#   Add them all together.
#   Take the square root of the result.
#   Divide by two.

# Example

# predict_age(65, 60, 75, 55, 60, 63, 64, 45) == 86

# Note: the result should be rounded down to the nearest integer.

# Some random tests might fail due to a bug in the JavaScript implementation. Simply resubmit if that happens to you.

def predict_age(*args)
  (Math.sqrt(args.map { |age| age * age }.sum) / 2).to_i
end

p predict_age(65, 60, 75, 55, 60, 63, 64, 45) # => 86
p predict_age(32, 54, 76, 65, 34, 63, 64, 45) # => 79

# The dropWhile Function

# Yet another staple for the functional programmer. You have a sequence of values and some predicate for those values. You want to remove the longest prefix of elements such that the predicate is true for each element. We'll call this the dropWhile function. It accepts two arguments. The first is the sequence of values, and the second is the predicate function. The function does not change the value of the original sequence.

# def isEven(num):
#   return num % 2 == 0

# arr = [2,4,6,8,1,2,5,4,3,2]

# dropWhile(arr, isEven) == [1,2,5,4,3,2] # True

# Your task is to implement the dropWhile function. If you've got a span function lying around, this is a one-liner! Alternatively, if you have a takeWhile function on your hands, then combined with the dropWhile function, you can implement the span function in one line. This is the beauty of functional programming: there are a whole host of useful functions, many of which can be implemented in terms of each other.

is_even = ->(n) { n.even? }
is_odd = ->(n) { n.odd? }

# def drop_while(arr, pred)
#   newArr = arr.dup
#   while !newArr.empty? && pred.call(newArr[0])
#     newArr.shift
#   end
#   newArr
# end

  def drop_while(arr, pred)
    arr.drop_while &pred
  end

p drop_while([2, 6, 4, 10, 1, 5, 4, 3], is_even) # => [1,5,4,3]
p drop_while([2, 100, 1000, 10_000, 10_000, 5, 3, 4, 6], is_even) # => [5,3,4,6]
p drop_while([998, 996, 12, -1000, 200, 0, 1, 1, 1], is_even) # => [1,1,1]
p drop_while([1, 4, 2, 3, 5, 4, 5, 6, 7], is_even) # => [1,4,2,3,5,4,5,6,7]
p drop_while([2, 4, 10, 100, 64, 78, 92], is_even) # => []
p drop_while([1, 2, 3, 4, 5], is_odd) # => [2,3,4,5]
p drop_while([1, 5, 111, 1111, 1111, 2, 4, 6, 4, 5], is_odd) # => [2,4,6,4,5]
p drop_while([-1, -5, 127, 86, 902, 2, 1], is_odd) # => [86,902,2,1]
p drop_while([2, 1, 2, 4, 3, 5, 4, 6, 7, 8, 9, 0], is_odd) # => [2,1,2,4,3,5,4,6,7,8,9,0]
p drop_while([1, 3, 5, 7, 9, 111], is_odd) # => []


# Plural

# We need a simple function that determines if a plural is needed or not. It should take a number, and return true if a plural should be used with that number or false if not. This would be useful when printing out a string such as 5 minutes, 14 apples, or 1 sun.

# You only need to worry about english grammar rules for this kata, where anything that isn't singular (one of something), it is plural (not one of something).

# All values will be positive integers or floats, or zero.

def plural(n)
  n == 1 ? false : true
end

p plural(0) # => true
p plural(0.5) # => true
p plural(1) # => false
p plural(100) # => true
p plural(Float::INFINITY) # => true