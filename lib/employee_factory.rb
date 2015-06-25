class EmployeeFactory
  def employee_for_type(type, info)
      employee = { :name => info[1] }

      if type == "Salary"
        employee[:salary] = info[2]
      elsif type == "Hourly"
        employee[:hours] = info[2]
        employee[:rate] = info[3]
      elsif type == "Salourly"
        employee[:salary] = info[2]
        employee[:hours] = info[3]
        employee[:rate] = info[4]
      end

      return employee
  end
end
