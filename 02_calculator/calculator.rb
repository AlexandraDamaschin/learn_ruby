def add(param1, param2)
  param1 + param2
end

def subtract(param1, param2)
  param1 - param2
end

def sum(params)
  params.inject(0) { |total, number| total + number }
end