# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

#Sleeve of Eratosthenes
def sum_primes(n)
  list=(2..n).to_a
  arr=[]
  i=2
  while i < Math.sqrt(n).round
    x=0
    while x < list.length
      arr << list[x] if list[x]==i || list[x]% i !=0
      x+=1
    end
    list=arr
    arr=[]
    i+=1
  end
  list.reduce(:+)
end

# Codes takes too long to process
# def sum_primes(n)
#   arr=[]
#   sum=0
#   i=2
#   while i <n
#     sum+= i if prime?(i)
#     i+=1
#   end
#   sum
# end
#
# def prime?(num)
#   i=2
#   while i < num
#     return false if num%i==0
#     i+=1
#   end
#   true
# end

puts sum_primes(2000000)
