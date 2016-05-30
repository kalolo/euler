<<begin
Multiples of 3 and 5
Problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
begin

def is_multiples(number)
  return true if (number % 3 == 0) || (number % 5 == 0)
end

count = 0

(1000-1).downto(1) do |number|
   count += number if is_multiples(number)
end

p count
