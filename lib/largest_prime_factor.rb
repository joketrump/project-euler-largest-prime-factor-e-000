# Enter your procedural solution here!
#largest_prime_factor
def largest_prime_factor(input)
  temp_num = input
  lcms = Array.new
  to_try = Array(2..input/2)
  # to_try.each { |num| }
  to_try.each do |x|
    if is_multiple?(temp_num, x) == true
      lcms.push(x)
      temp_num = temp_num / x
      if x > temp_num
        break
      end
    end
  end
  while is_prime?(lcms.max) != true
    lcms.pop
  end
  return lcms.max
end

def is_prime?(n)
  (2..n/2).none? {|div| n % div == 0 }
end

def is_multiple?(num, multiple)
  if num % multiple == 0
    return true
  else
    return false
  end
end
