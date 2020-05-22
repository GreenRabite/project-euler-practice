# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

def prime_num(n)
  primes=[2,3,5,7,11,13]
  i=14
  while primes.length <n
    primes << i if prime?(i)
    i+=1
  end
  primes[-1]
end

def prime?(num)
  i=2
  while i < num
    return false if num % i==0
    i+=1
  end
  true
end

puts prime_num(10001)
