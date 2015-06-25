require_relative("lib/employee_loader.rb")

loader = EmployeeLoader.new("employees.txt")
employees = loader.data

employees.each do |employee|
  p employee
end
