require 'prime'

def lazy
  return 600851475143.prime_division[-1][0]
end

print(lazy)
print(manual)
