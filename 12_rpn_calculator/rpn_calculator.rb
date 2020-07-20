class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = [0]
  end

  def value
    stack[stack.length - 1]
  end

  def push(value)
    stack.push(value.to_f)
  end

  def plus
    stack.push(pop + pop)
  end

  def minus
    temp = pop
    stack.push(pop - temp)
  end

  def times
    stack.push(pop * pop)
  end

  def divide
    temp = pop
    stack.push(pop / temp)
  end

  def pop
    value = stack.pop
    raise 'calculator is empty' if value.nil?

    value
  end

  def tokens(string_value)
    string_value.split.map do |value|
      case value
      when '+', '-', '*', '/'
        value.to_sym
      else
        value.to_f
      end
    end
  end

  def evaluate (string_value)
    tokens(string_value).each do |value|
      case value
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push value
      end
    end
    value
  end
end