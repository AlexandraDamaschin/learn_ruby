def add(param1, param2)
  param1 + param2
end

def subtract(param1, param2)
  param1 - param2
end

def sum(params)
  params.inject(0) { |total, number| total + number }
end

def multiply(numbers)
  # result = 1
  # numbers.each { |number| result *= number }
  # result

  numbers.inject(1) { |total, number| total * number }
end

def power(number, power)
  number ** power
end