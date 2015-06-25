class HourlyEmployee
  attr_accessor(:name)

  def initialize(info)
    @name = info[:name]
    @hours = info[:hours].to_i
    @rate = info[:rate].to_i
  end

  def payroll
    return @hours * @rate
  end
end
