# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(str)
  half=str.length/2
  i=0
  while i < half
    return false if str[i]!=str[-i-1]
    i+=1
  end
  true
end

def prod_palin(num)
  max=num
  max_palin=0
  while max>0
    num=max
    while num>0
      prod = max * num
      if palindrome?(prod.to_s)
        max_palin=prod if prod > max_palin
      end
      num-=1
    end
    max-=1
  end
  max_palin
end

puts prod_palin(999)
