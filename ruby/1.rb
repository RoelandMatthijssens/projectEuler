# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
require "set"

def multiples_of_below(x, n)
  results = []
  i = x
  while i < n do
    results << i
    i+=x
  end
  return results
end

def main(max)
  multiples = Set[]
  multiples.merge(multiples_of_below(3, max).to_set)
  multiples.merge(multiples_of_below(5, max).to_set)
  print(multiples)
  return multiples.reduce(:+)
end

print main(1000)
