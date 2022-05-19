class Solver
  def factorial(number)
    raise ArgumentError, 'The input should be an integer' if number.class != Integer
    raise ArgumentError, 'The input should be non-negative' if number.negative?

    return 1 if number.zero?

    number * factorial(number - 1)
  end
end
