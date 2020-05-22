# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are
#  multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of
#  these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def summation(n)
  arr=[]
  while n > 0
    arr << n if n%3==0 || n%5==0
    n-=1
  end
  arr.reduce(:+)
end

puts summation(999)
puts "Hello"
