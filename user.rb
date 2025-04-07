class User
  def initialize(name:, age:, email:)
    @data = {
      name: name, 
      age: age , 
      email: email
    }
  end

  def data
    @data
  end
end