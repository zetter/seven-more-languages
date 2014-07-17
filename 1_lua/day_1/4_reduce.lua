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
