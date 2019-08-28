class Manager

  attr_reader :department, :name, :age
  attr_accessor :employees 

  @@all = []
  
  def initialize(name, age, department)
    @name = name 
    @age = age 
    @department = department 
    @employees = []
    @@all << self 
  end

  def self.all
    @@all 
  end

  def hire_employee(employee_name, employee_salary)
    self.employees << Employee.new(employee_name, employee_salary)
  end

  def self.all_departments
    @@all.map{|person| person.department}
  end

  def self.average_age
     sum = @@all.map{|person| person.age}.reduce(&:+)
     manager_count = @@all.map{|person| person.age}.length
    sum.to_f / manager_count
  end
end
