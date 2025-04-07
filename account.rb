class Account
  def initialize(points: 0)
    @points = points
  end

  def points
    @points
  end

  def add_points(amount)
    @points += amount
  end

  def use_points(amount)
    if @points >= amount
      @points -= amount
    end
  end
end