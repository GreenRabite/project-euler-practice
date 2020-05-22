# Even Fibonacci numbers
# Problem 2
# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with 1
# and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the sum
#   of the even-valued terms.

def fib_series(n)
  arr=[0,1]
  while arr.last < n
    arr<<arr[-2]+arr[-1]
  end
  arr
end

def add_even(arr)
  sum=0
  arr.each do |num|
    sum+=num if num%2==0
  end
  sum
end

puts add_even(fib_series(4000000))
