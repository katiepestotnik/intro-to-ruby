# Hello World
p "Hello World"
adjective = "Big Bad"
p "Hello #{adjective} World"

big_hello = "Hello World"
p big_hello.upcase!
p big_hello

#Nums Array and Enumerables

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

p "unique nums only: #{nums.uniq}"

p "5 is pushed to end: #{nums.push(5)}"

p "after push: #{nums}"

p "last digit popped: #{nums.pop}"

p "after pop: #{nums}"

p "shift remove first number: #{nums.shift}"

p "after shift remove of 5: #{nums}"

p "unshift 5 back: #{nums.unshift(5)}"

p "length is #{nums.length}"

p "does array have an 8?: #{nums.include?(8)}"

p "find num > 10: #{nums.find_all{|n| n > 10}}"

p "are all nums > 0? #{nums.all?{|n|n>0}}"

# only num divisible by 8 is zero in this array! lol
p "any nums divisible by 8: #{nums.any?{|n|n %8 == 0}}"

p "how many numbers are > 4?: #{nums.count{|n|n>4}}"

nums.each_with_index{|n, i|
    p "#{n} * #{i} value: #{n*i}"}

p "num divisible by 7 and 5 and > 0 = #{nums.find{|n|n%7==0 && n%5==0 && n>0}}"

p "index of num divisible by 7 and 5 and > 0 = #{nums.find_index{|n|n%7==0 && n%5==0 && n>0}}"

p "first three numbers = #{nums.first(3)}"

p "last five numbers = #{nums.last(5)}"
# hash returns the remainder for each array item
p "group_by modulo 3 = #{nums.group_by{|n|n%3}}"

p "smallest num = #{nums.min}"
p "largest num = #{nums.max}"
p "smallest and largest = #{nums.minmax}"

p "numbers that are not divisible by three = #{nums.reject{|n|n%3==0}}"

p "numbers that are divisible by five = #{nums.select{|n|n%5==0}}"

# Color Array
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

p "Random Color = #{colors.sample}"

puts "Reverse the array = #{colors.reverse}"
# each mutates original map does not
puts "All Caps for colors = #{colors.map{|c|c.upcase}}"

# Methods




