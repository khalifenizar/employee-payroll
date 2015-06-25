class SalaryEmployee
  attr_accessor(:name)

  def initialize(info)
    @name = info[:name]
    @salary = info[:salary].to_i
  end

  def payroll
    return @salary
  end
end
