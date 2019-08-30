require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


m1 = Manager.new("Megan", "Accounting",29)
m2 = Manager.new("Brit", "Tech",40)
m3 = Manager.new("Logan", "Cafeteria",37)

e1 = Employee.new("Renea", 60000, m1)
e2 = Employee.new("Edmonds", 80000, m2)
e3 = Employee.new("Ricky", 55000, m3)
e4 = Employee.new("Ian", 25000, m1)
e5 = Employee.new("Ricardo", 54000, m3)
e6 = Employee.new("Cynthia", 56000, m3)


binding.pry
puts "done"
