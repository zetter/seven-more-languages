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

function print_primes(num)
  local primes_printed = 0
  local last_number_checked = 0
  while primes_printed < num do
    repeat
      last_number_checked = last_number_checked + 1
    until is_prime(last_number_checked)
    print(last_number_checked)
    primes_printed = primes_printed + 1
  end
end

print('print_primes(3)')
print_primes(3)

print('print_primes(20)')
print_primes(20)

function print_primes_recusive(num, primes_printed, last_number_checked)
  primes_printed = primes_printed or 0
  last_number_checked = last_number_checked or 0
  if primes_printed == num then
    return
  elseif is_prime(last_number_checked) then
    print(last_number_checked)
    print_primes_recusive(num, primes_printed + 1, last_number_checked + 1)
  else
    print_primes_recusive(num, primes_printed, last_number_checked + 1)
  end
end

print('print_primes_recusive(3)')
print_primes_recusive(3)

print('print_primes_recusive(20)')
print_primes_recusive(20)
