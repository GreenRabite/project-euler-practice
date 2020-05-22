# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

def smallest_mult(num)
  while true
    return num if twenty_divisble?(num)
    num+=(20)
  end
end

def twenty_divisble?(num)
  i=20
  while i >0
    return false if num % i!=0
    i-=1
  end
  true
end

puts smallest_mult(20)
