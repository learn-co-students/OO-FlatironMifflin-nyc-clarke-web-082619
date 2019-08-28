require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("m1", "finance", 50)
m2 = Manager.new("m2", "hr", 30)
m3 = Manager.new("m3", "security", 35)


e1 = Employee.new("e1",50000,m1)
e2 = Employee.new("e2", 50500,m2)
e3 = Employee.new("e3", 45000, m2)
e4 = Employee.new("e4", 49050,m2)
e5 = Employee.new("e5", 30000, m3)

puts e1.manager_name 
puts e2.manager_name
puts e3.manager_name
puts e4.manager_name
puts e5.manager_name

puts "e1 tax bracket"
e1tb = e1.tax_bracket.select{|x| true}
p e1tb
puts "e5 tax bracket"
e5tb = e5.tax_bracket.select{|x| true}
p e5tb

puts "over 46000"
p Employee.paid_over(46000)

puts "hr department first employee"
p Employee.find_by_department("hr")

puts "m1 employees"
p m1.employees
puts "m2 employees"
p m2.employees
puts "m3 employees"
p m3.employees


puts "all departments"
p Manager.all_departments

puts "average age"
p Manager.average_age

#binding.pry
#puts "done"
