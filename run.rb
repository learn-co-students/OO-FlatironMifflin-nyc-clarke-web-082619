require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Alex", "Sales", 52)
manager2 = Manager.new("Oscar", "Marketing", 45)

employee1 = Employee.new("Leo", 1000, manager1)
employee2 = Employee.new("Joan", 1500, manager2)
employee3 = Employee.new("Derek", 3000, manager1)
employee4 = Employee.new("JJ", 4000, manager2)

binding.pry
puts "done"
