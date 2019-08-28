class Employee

  attr_reader :name, :department, :manager, :salary

  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @manager_name = Manager.name 
    @department = Manager.department  
    @@all << self 
  end

  def self.all
  @@all
  end

  def self.paid_over(base_salary_amount)
    self.all.select{|emp| emp.salary > base_salary_amount}
  end

  def self.find_by_department(dept_name)
    self.all.find{|emp| emp.department == dept_name}
  end

  def tax_bracket
    sal = self.salary
    self.all.select{|emp| emp.salary.between?(sal - 1000, sal + 1000)}
  end

end
