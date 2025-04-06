class User
  def initialize(is_activated: false)
    @is_activated = is_activated
    @profile = nil
  end

  def activated?
    @is_activated
  end

  def verify_email
    @is_activated = true
  end

  def profile
    @profile
  end

  def set_profile(text)
    @profile = text
  end
end