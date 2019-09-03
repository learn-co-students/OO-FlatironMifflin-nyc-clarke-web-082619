class Manager

    attr_accessor :manager_name, :department, :age, :employee

    @@all = []

    def initialize(manager_name, department, age)
        @manager_name = manager_name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select { |employee| employee if employee.manager == self }
    end

    def hire_employee(name, salary)
        emp = Employee.new(name, salary)
        emp.manager = self
    end

    def self.all_departments
        all.map {|manager| manager.department}.uniq
    end

    def self.average_age
        total = 0.0
        all.map {|manager| total += manager.age}
        total / all.length
    end

    def self.all
        @@all
    end
end
