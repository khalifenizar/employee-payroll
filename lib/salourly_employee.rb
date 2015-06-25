class SalourlyEmployee
  attr_accessor(:name)

  def initialize(info)
    @name = info[:name]
    @salary = info[:salary].to_i
    @hours = info[:hours].to_i
    @rate = info[:rate].to_i
  end

  def payroll
    return @salary + (@hours * @rate)
  end
end
