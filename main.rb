# Square(n) Sum

# Complete the square sum function so that it squares each number passed into it and then sums the results together.

# For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

def square_sum(numbers)
  return 0 if numbers.length == 0
  numbers.map {|i| i**2}.reduce {|acc, num| acc + num}
end

p square_sum([0, 3, 4, 5]) # -> 50

# Are You Playing Banjo?

# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r", you are playing banjo!

# The function takes a name as its only argument, and returns one of the following strings:

# name + " plays banjo" 
# name + " does not play banjo"

def are_you_playing_banjo(name)
  return "#{name} #{name.chars[0].downcase == "r" ? "plays banjo" : "does not play banjo"}"
end

p are_you_playing_banjo("Martin") # -> "Martin does not play banjo"
p are_you_playing_banjo("Rikke") # -> "Rikke plays banjo"

# Count by X

# Create a function with two arguments that will return an array of the first (n) multiples of (x).

# Assume both the given number and the number of times to count will be positive numbers greater than 0.

# Return the results as an array (or list in Python, Haskell or Elixir).

# Examples:

# count_by(1,10) #should return [1,2,3,4,5,6,7,8,9,10]
# count_by(2,5) #should return [2,4,6,8,10]

def count_by(x, n)
  (1).upto(n).map {|i| i * x}
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
  return "" unless dna.length != 0
  dna.chars.map {|char| char == "T" ? "U" : char}.join
end


# # Alternative
# def dna_to_rna(dna)
#   dna.gsub('T','U')
# end

p dna_to_rna("TTTT") # => "UUUU"
p dna_to_rna("GCAT") # => "GCAU"
p dna_to_rna("GACCGCCGCC") # => "GACCGCCGCC"
p dna_to_rna("") # => ""

# Grasshopper - Grade book

# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

def get_grade(s1, s2, s3)
  average = (s1 + s2 + s3) / 3.0
  if (average >= 90)
    return "A"
  elsif (80 <= average && average < 90)
    return "B"
  elsif (70 <= average && average < 80)
    return "C"
  elsif (60 <= average && average < 70)
    return "D"
  else 
    return "F"
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
  (s * 100000 / 3600).floor(0)
end


p cockroach_speed(1.08) # => 30
p cockroach_speed(1.09) # => 30
p cockroach_speed(0) # => 0

# Fake binaries

# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

def fake_bin(s)
  s.chars.map {|char| char.to_i < 5 ? "0" : "1"}.join
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
 list.sort.first
end

def max(list)
 list.sort.last
end


p min([-52, 56, 30, 29, -54, 0, -110]) # => -110
p min([42, 54, 65, 87, 0]) # => 0
p max([4,6,2,1,9,63,-134,566]) # => 566
p max([5]) # => 5


# Even or Odd

# Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
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

p is_square -1 # => false "-1 is not a perfect square"
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

def add_binary(a,b)
  quotient = a + b
  binary = []
  while quotient > 0
    binary.insert(0, quotient % 2)
    quotient = quotient / 2
  end
  binary.join("")
end


# # The to_s function in Ruby returns a string containing the place-value representation of int with radix base (between 2 and 36)
# def add_binary(a,b)
#   (a + b).to_s(2)
# end


p add_binary(1,1) # => "10"
p add_binary(0,1) # => "1"
p add_binary(1,0) # => "1"
p add_binary(2,2) # => "100"
p add_binary(51,12) # => "111111"



# List Filtering

# In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
  l.select { |el| el.is_a? Numeric }
end

# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end


p filter_list([1,2,'a','b']) # => [1,2]
p filter_list([1,'a','b',0,15]) # => [1,0,15]
p filter_list([1,2,'aasf','1','123',123]) # => [1,2,123]


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



p printer_error("aaaaabbbbmm") # => "0/11"
s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
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
  arr.reduce(points) { |sum, num| sum += num } / ( arr.size + 1.0 ) < points
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
  case weight / height ** 2
  when 0..18.5
    "Underweight"
  when 18.6..25.0
    "Normal"
  when 25.1..30.0
    "Overweight"
  else
    "Obese"
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

def lovefunc( flower1, flower2 )
  flower1.even? && flower2.odd? || flower1.odd? && flower2.even? 
end

# def lovefunc( flower1, flower2 )
#   (flower1 + flower2).odd?
# end


p lovefunc(1,4) # => true
p lovefunc(2,2) # => false
p lovefunc(0,1) # => true
p lovefunc(0,0) # => false
p lovefunc(5,5) # => false


# Multiples of 3 or 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.

def solution(number)
  return 0 unless number >= 0;
 (1...number).reduce(0) { |acc, num| acc += num%3 == 0 || num%5==0 ? num : 0 }
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
  s.sort[0].chars.join("***")
end

p two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]) # => 'b***i***t***c***o***i***n' 
p two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]) # => 'a***r***e' 
p two_sort(["lets", "talk", "about", "javascript", "the", "best", "language"]) # => 'a***b***o***u***t' 
p two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]) # => 'c***o***d***e'); 
p two_sort(["Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"]) # => 'L***e***t***s' 


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
    p0 += (p0 * percent/100.0).floor + aug
    years += 1
  end
  years
end


p nb_year(1500, 5, 100, 5000) # => 15
p nb_year(1500000, 2.5, 10000, 2000000) # => 10
p nb_year(1500000, 0.25, 1000, 2000000) # => 94


# Rock Paper Scissors!

# # Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples:

# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!

def rps(p1, p2)
  return "Draw!" if p1 == p2;
  return "Player 1 won!" if p1 == "scissors" && p2 == "paper" || p1 == "paper" && p2 == "rock" ||  p1 == "rock" && p2 == "scissors"
  return "Player 2 won!"
end

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
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
  return pin.match?(/^\d{4}$/) || pin.match?(/^\d{6}$/)
end

p validate_pin("") # => false
p validate_pin("1") # => false
p validate_pin("1111") # => true
p validate_pin("123456") # => true
p validate_pin("1234567890") # => false
p validate_pin("12") # => false
p validate_pin("a1234") # => false


# Double Char

# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.
# Examples (Input -> Output):

# * "String"      -> "SSttrriinngg"
# * "Hello World" -> "HHeelllloo  WWoorrlldd"
# * "1234!_ "     -> "11223344!!__  "


def double_char(str)
  str.chars.map { |char| char * 2 }.join("")
end


p double_char("abcd") # => "aabbccdd"
p double_char("Adidas") # => "AAddiiddaass"
p double_char("1337") # => "11333377"
p double_char("illuminati") # => "iilllluummiinnaattii"
p double_char("123456") # => "112233445566"
p double_char("%^&*(") # => "%%^^&&**(("



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
  'english'=>'Welcome',
  'czech'=>'Vitejte',
  'danish'=>'Velkomst',
  'dutch'=>'Welkom',
  'estonian'=>'Tere tulemast',
  'finnish'=>'Tervetuloa',
  'flemish'=>'Welgekomen',
  'french'=>'Bienvenue',
  'german'=>'Willkommen',
  'irish'=>'Failte',
  'italian'=>'Benvenuto',
  'latvian'=>'Gaidits',
  'lithuanian'=>'Laukiamas',
  'polish'=>'Witamy',
  'spanish'=>'Bienvenido',
  'swedish'=>'Valkommen',
  'welsh'=>'Croeso'
}


def greet(language)
  LANG_DB[language] || LANG_DB["english"]
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
  "hello world!"
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
  while(target != sum) 
    numbers[x..-1].each_with_index do |num, idx2|  
      if num + numbers[idx1] == target
        indexes << idx1
        indexes << idx2 + x
        sum = num + numbers[idx1]
        break
      end
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
p two_sum([1234, 5678, 9012], 14690).sort # => [1, 2]
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

p digitize(35231) # => [1,3,2,5,3]
p digitize(0) # => [0]

# Function 3 - multiplying two numbers

# Implement a function which multiplies two numbers.

def multiply(a,b) 
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
  array1.nil? || array2.nil? ? false : array1.sort.map { |v| v * v} == array2.sort
end

p comp(
  [121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) 
# => true

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

p comp(a, b) # => false

p comp(nil, []) # => false

p comp([], nil) # => false

p comp([],[]) # => true

p comp(
  [144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) # => false

p comp(
  [121, 121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) # => false


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
  input_str.count "aeiou"
end

p get_count("abracadabra") # => 5
p get_count("") # => 0
p get_count("pear tree") # => 4
p get_count("o a kak ushakov lil vo kashu kakao") # => 13
p get_count("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty") # => 168




# Alan Partridge II - Apple Turnover

# Alan is known for referring to the temperature of the apple turnover as 'Hotter than the sun!'. According to space.com the temperature of the sun's corona is 2,000,000 degrees C, but we will ignore the science for now.

# Your job is simple, if (x) squared is more than 1000, return 'It's hotter than the sun!!', else, return 'Help yourself to a honeycomb Yorkie for the glovebox.'.

# X will be a valid integer number.

# X will be either a number or a string. Both are valid. 

def apple(x)
  x.to_i**2 > 1000 ? "It's hotter than the sun!!" : "Help yourself to a honeycomb Yorkie for the glovebox."
end

p apple('50') # => "It's hotter than the sun!!"
p apple(4) # => "Help yourself to a honeycomb Yorkie for the glovebox."
p apple("12") # => "Help yourself to a honeycomb Yorkie for the glovebox."
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
  m = (num ** 0.5).ceil.to_f
  while(m > 1)
    if (num / m) % 1 == 0 then return false end
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
p isPrime(958297) # => false
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
p isPrimeBuiltIn(958297) # => false
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


p array_diff([1,2], [1]) # => [2]
p array_diff([1,2,2], [1]) # => [2,2]
p array_diff([1,2,2], [2]) # => [1]
p array_diff([1,2,2], []) # => [1,2,2]
p array_diff([], [1,2]) # => []
p array_diff([1,2,3], [1,2]) # => [3]



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
  while(arrStart < arr.size)
    arrEnd = arr.size - 1 
    while(arrStart <= arrEnd)
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
  walk_coordinates = {"x"=> 0, "y"=> 0}
  walk.each do |dir|
    case dir
      when "n"
      walk_coordinates["y"] += 1
      when "s"
      walk_coordinates["y"] -= 1
      when "e"
      walk_coordinates["x"] += 1
      when "w"
      walk_coordinates["x"] -= 1
    end
  end
  walk_coordinates["x"] == 0 && walk_coordinates["y"] == 0
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) # => 'true'
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) # => 'false'
p is_valid_walk(['w']) # => 'false'
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) # => 'false'


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
  def say_ho_ho_ho
  end
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
  str.chars.reject { |char| ["a", "e", "i", "o", "u"].include?(char.downcase) }.join
end

p disemvowel("This website is for losers LOL!") # => "Ths wbst s fr lsrs LL!"