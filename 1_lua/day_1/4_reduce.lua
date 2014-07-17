function reduce(max, init, f)
  local num = 1
  local last = init
  while num <= max do
    last = f(last, num)
    num = num + 1
  end
  return last
end

print('reduce(5, 0, function(a,b) a + b end)')
print(reduce(5, 0, (function(a,b) return a + b end)))

function factorial(n)
  local product = function(a, b)
    return a * b
  end
  return reduce(n, 1, product)
end


print('factorial(1)')
print(factorial(1))

print('factorial(5)')
print(factorial(5))