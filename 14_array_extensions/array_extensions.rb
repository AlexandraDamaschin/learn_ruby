class Array
  def sum
    result = 0
    each do |number|
      result += number
    end
    result
  end

  def square
    map { |number| number * number }
  end

  def square!
    map! { |number| number * number }
  end
end
