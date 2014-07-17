function is_prime(num)
  local divisor = num - 1
  if num < 2 then
    return false
  end
  while divisor > 1 do
    if (num % divisor) == 0 then
      return false
    else
      divisor = divisor - 1
    end
  end
  return true
end

print('is_prime(1)')
print(is_prime(1))

print('is_prime(2)')
print(is_prime(2))

print('is_prime(4)')
print(is_prime(4))

print('is_prime(17)')
print(is_prime(17))

print('is_prime(18)')
print(is_prime(18))