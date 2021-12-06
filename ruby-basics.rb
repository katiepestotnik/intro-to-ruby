# Hello World
p "Hello World"
adjective = "Big Bad"
p "Hello #{adjective} World"

big_hello = "Hello World"
# upcase! is permanently changes
p big_hello.upcase!

#Nums Array and Enumerables

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

puts "unique nums only: #{nums.uniq}"

puts "5 is pushed to end: #{nums.push(5)}"

puts "last digit popped: #{nums.pop}"

puts "after pop: #{nums}"

puts "shift remove first number: #{nums.shift}"

puts "after shift remove of 5: #{nums}"

puts "unshift 5 back: #{nums.unshift(5)}"

puts "length of array = #{nums.length}"

puts "does array have an 8? #{nums.include?(8)}"

puts "find num > 10 #{nums.find_all{|n| n > 10}}"

puts "are all nums > 0? #{nums.all?{|n|n>0}}"

# only num divisible by 8 is zero in this array! lol
puts "any nums divisible by 8? #{nums.any?{|n|n %8 == 0}}"

puts "how many numbers are > 4? #{nums.count{|n|n>4}}"

nums.each_with_index{|n, i|
    puts "#{n} X #{i} = #{n*i}"}

puts "num divisible by 7 and 5 and > 0 = #{nums.find{|n|n%7==0 && n%5==0 && n>0}}"

puts "index of num divisible by 7 and 5 and > 0 = #{nums.find_index{|n|n%7==0 && n%5==0 && n>0}}"

puts "first three numbers = #{nums.first(3)}"

puts "last five numbers = #{nums.last(5)}"
# hash returns the remainder for each array item
group = nums.group_by{|n|n%3}
puts "with full hash using group_by: #{group}"
puts "hash with only nums % by 3: #{group[0]}"

puts "smallest num = #{nums.min}"
puts "largest num = #{nums.max}"
puts "smallest and largest = #{nums.minmax}"

puts "numbers that are not divisible by three = #{nums.reject{|n|n%3==0}}"

puts "numbers that are divisible by five = #{nums.select{|n|n%5==0}}"

# Color Array
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

puts "Random Color = #{colors.sample}"

puts "Reverse the array = #{colors.reverse}"
# each mutates original map does not
puts "All Caps for colors = #{colors.map{|c|c.upcase}}"

# Methods

def find_area w, h
    w * h
end
puts "rectangle area = #{find_area(5, 10)}"

def multiply_each_by_five arr
    arr.map{|num|"#{num} X 5 = #{num*5}"}
end
puts multiply_each_by_five([5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0])

# Methods With a Hash
book = {
  name: 'book',
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}
lamp = {
  name: 'lamp',
  type: 'reading',
  brand: 'Ikea',
  price: 25
}
table = {
  name: 'table',  
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}
def print_price hash
    puts "the price of the #{hash[:name]} = #{hash[:price]}"
end
print_price(lamp)
print_price(book)
print_price(table)

def print_item_sums hash1, hash2
    sum = hash1[:price] + hash2[:price]
    puts "The total for the #{hash1[:name]} and #{hash2[:name]} = #{sum}"
end
print_item_sums(lamp, book)

# Euler Problem
nums = Array(1...1000)
result = 0
nums.each do |n|
    if n % 3 == 0 && n % 5 == 0
        result += n
    end
end
puts "Sum of all multiples of 3 and 5 = #{result}"

# Primes
require 'prime'
def check_prime? num
    puts "is #{num} a prime number? #{Prime.prime?(num)}"
end
check_prime?(4)

def get_primes num
    Prime.each(num) do |prime|
        check_prime?(prime)
    end
end
get_primes(100)