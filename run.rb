require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m_bob = Manager.new("Bob", "legal", 99)
m_rob = Manager.new("Rob", "accounting", 29)
m_hob = Manager.new("Hob", "minions", 51)

empl1 = Employee.new("Gary", 4999, m_bob)
empl2 = Employee.new("Albert", 3765, m_rob)
empl3 = Employee.new("Dido", 9999, m_hob)
empl4 = Employee.new("Apple", 4000, m_rob)
empl5 = Employee.new("Lulu", 2900, m_hob)
empl6 = Employee.new("Shauna", 3000, m_rob)
empl7 = Employee.new("Lauren", 5, m_bob)







binding.pry
puts "done"
