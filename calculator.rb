class Calculator
  def divide(a, b)
    if b == 0
      raise ArgumentError, "0で割ることができません"
    end
    a / b
  end
end