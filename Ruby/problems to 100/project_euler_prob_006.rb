# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

def sum_squares(num)
  arr=[]
  (1..num).each do |el|
    arr << el**2
  end
  arr.reduce(:+)
end

def square_of_sums(num)
  (1..num).reduce(:+)**2
end


def difference(int)
  square_of_sums(int)-sum_squares(int)
end

puts difference(100)
