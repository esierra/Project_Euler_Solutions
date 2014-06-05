#PROBLEM #1
# Find the sum of all the multiples of 3 or 5 below 1000.
def multiples_of_3_and_5(num)
sum=0
(0...num).each {|i| sum+=i	if i%3==0 or i%5==0}
return sum
end

# puts multiples_of_3_and_5(1000)
#------------------------------------------------------------------------------------#
#PROBLEM #2
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.
def fib(n)
one=0
two=1
three=2
sum=0
while (three<n)
	three=one+two
	one=two
	two=three
	if three%2==0
		sum+=three
	end
end
return sum
end

# puts fib(4000000)
#------------------------------------------------------------------------------------#

#PROBLEM #3
# The prime factors of 13195 are 5, 7, 13 and 29. 
# What is the largest prime factor of the number 600851475143 ?
require 'prime'
arr=Array.new()
arr=600851475143.prime_division.last

#------------------------------------------------------------------------------------#
#PROBLEM #4
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
product=0
arr=Array.new()
800.upto(999) do |a|
	100.upto(999) do |b|
	product=a*b
	arr<<product if  product.to_s.reverse.to_i==product
end
end
# puts arr.max
#------------------------------------------------------------------------------------#
#PROBLEM #5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 (1..20).inject(:lcm)
 #------------------------------------------------------------------------------------#
#PROBLEM #6
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
square_of_sum=(1..100).to_a.inject(:+) **2
sum_of_squares=(1..100).to_a.map{|x| x**2}.inject(:+)
puts square_of_sum-sum_of_squares

#------------------------------------------------------------------------------------#
#PROBLEM #7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
prime = Prime.instance
 p prime.first 10001
#------------------------------------------------------------------------------------#
#PROBLEM #8
#Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
big_arr="7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450".split("").to_a
max=0
for i in 0..big_arr.length - 13
  tmp = big_arr[i].to_i
  1.upto(12) { |j| tmp = tmp * big_arr[i + j].to_i }
  max = tmp if tmp > max
end
puts max
#------------------------------------------------------------------------------------#
#PROBLEM #9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

 1.upto(500) do |x|
	x.upto(500) do |y|
		y.upto(500) do |z|
 if x**2 + y**2 == z**2 and  x+y+z==1000
 puts x*y*z
		end
	end
end
end
#------------------------------------------------------------------------------------#
#PROBLEM #10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
sum=0
Prime.each(2000000) {|prime| sum+=prime}