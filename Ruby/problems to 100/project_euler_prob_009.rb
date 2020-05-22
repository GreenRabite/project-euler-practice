# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#a+b+c=1000
#a^2+b^2=c^2


def pyth
  a=1
  while a < 1000
    b=1
    while b < 1000
      c=1
      while c<1000
        return "product is #{a*b*c}" if a**2+b**2==c**2 && a+b+c==1000
        c+=1
      end
      b+=1
    end
    a+=1
  end
end

puts pyth
