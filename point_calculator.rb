class PointCalculator
  def calculate_points(amount, membership_type)
    if membership_type == "gold"
      amount * 2
    elsif membership_type == "silver"
      (amount * 1.5).to_i
    else
      amount
    end
  end
end