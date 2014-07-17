function for_loop(a,b,f)
  while a <= b do
    f()
    a = a + 1
  end
end

print("for_loop(1,2,(function() print('hi') end)")
for_loop(1,2,(function() print('hi') end))

print("for_loop(2,6,(function() print('hi') end)")
for_loop(2,6,(function() print('hi') end))