class EmployeeLoader
  def initialize(file)
    @file = file
  end

  def data
    employee_lines = IO.readlines(@file)
    employees = employee_lines.map do |line|
      info = line.split(" ")
      employee = { :name => info[1], :type => info[0] }

      if employee[:type] == "Salary"
        employee[:salary] = info[2]
      elsif employee[:type] == "Hourly"
        employee[:hours] = info[2]
        employee[:rate] = info[3]
      elsif employee[:type] == "Salourly"
        employee[:salary] = info[2]
        employee[:hours] = info[3]
        employee[:rate] = info[4]
      end

      employee
    end

    return employees
  end
end
