<<begin
Largest prime factor
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
begin


# dont want to use prime... from the class
# looks like I could use prime_division .. but thats not fun :P

def prime_factor(n)
  factors = []
  p = 2


  while (p < n)

    return factors if ( factors.inject(:*).to_i >= n )

    if ( n % p == 0  && factors.inject(:*).to_i < n  )
      factors.push(p)
    end

    p += 1

  end


  return factors
end

factors = prime_factor(600851475143)

p factors