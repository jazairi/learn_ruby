def add(int, another_int)
  return int + another_int
end

def subtract(int, another_int)
  return int - another_int
end

def sum(int_array)
  if int_array == []
    return 0
  else
    return int_array.inject { |sum, int| sum + int }
  end
end

def multiply(*ints)
  return ints.inject { |product, int| product * int }
end

def power(base, exponent)
  return base ** exponent
end

def factorial(num)
  if num == 0
    return 1
  else
    return (1..num).inject { |product, int| product * int }
  end
end
