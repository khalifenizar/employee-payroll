class Employee
  attr_accessor(:name)

  def initialize(info)
    @name = info[:name]
  end
end
