<<b
Largest palindrome product
Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
b


def is_palindrome(var)

  var = var.to_s.split('')

  return true if var.size == 1

  x = 0
  y = var.size - 1

  while ( x <= y )
    return false if ( var[x] != var[y])
    x += 1
    y -= 1
  end

  return true
end


def largest_palindrome(start)

  (start).downto(10) do |i|

    return i*i if is_palindrome(i*i)

    (i-1).downto(10) do |j|

      return i * j if is_palindrome(i * j)

    end

  end
end

p largest_palindrome(999)