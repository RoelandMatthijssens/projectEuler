require 'prime'

def main(max)
  return Prime.take_while { |p| p<max }.reduce(:+)
end

puts(main(2*10**6))
