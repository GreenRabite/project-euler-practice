# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number
# 600851475143 ?

def prime_factors(n)
  num=Math.sqrt(n).round
  while num>0
    if n%num==0
      return num if prime?(num)
    end
    num-=1
  end
end

def prime?(num)
  i=2
  while i <num
    return false if num%i==0
    i+=1
  end
  true
end

puts prime_factors(600851475143)
# puts prime_factors(6)
