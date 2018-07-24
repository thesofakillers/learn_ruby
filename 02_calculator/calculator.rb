#write your code here
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(arrayOfNumbers)
  return arrayOfNumbers.inject(0){|sum, x| sum + x }
end

def multiply(arrayOfNumbers)
  return arrayOfNumbers.reduce(1){|x, y| x*y}
end

def power(a, b)
  return a**b
end

def factorial(number)
  if number <= 1
    return 1
  else
    return number * factorial(number-1)
  end
end
