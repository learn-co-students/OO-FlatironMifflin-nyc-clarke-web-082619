require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


emp1 = Employee.new("tom", 30000)
emp2 = Employee.new("mike", 33000)
emp3 = Employee.new("rod", 27000)
emp4 = Employee.new("rebecca", 36000)
emp5 = Employee.new("linda", 31000)

man1 = Manager.new("jeff", "office", 60)
man2 = Manager.new("carol", "office", 45)
man3 = Manager.new("michael", "produce", 33)
man4 = Manager.new("zach", "cheese", 27)
man5 = Manager.new("debbie", "HR", 55)

man3.hire_employee("jasmin", 34000)

emp1.manager = man1
emp2.manager = man2
emp3.manager = man3
emp4.manager = man4
emp5.manager = man5

binding.pry
puts "done"
