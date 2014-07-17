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

function for_loop_recursive(a,b,f)
  if a > b then
    return
  else
    f()
    for_loop_recursive(a + 1, b, f)
  end
end

print("for_loop_recursive(1,2,(function() print('hi') end)")
for_loop_recursive(1,2,(function() print('hi') end))

print("for_loop_recursive(2,6,(function() print('hi') end)")
for_loop_recursive(2,6,(function() print('hi') end))