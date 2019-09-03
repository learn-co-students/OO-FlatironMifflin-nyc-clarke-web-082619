class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def tax_bracket
        min = self.salary - 1000
        max = self.salary + 1000
        @@all.select { |employee| employee.salary >= min && employee.salary <= max if employee != self}
    end

    def self.paid_over(number)
        all.select { |employee| employee.salary > number }
    end

    def self.find_by_department(dept_name)
        all.find { |employee| employee if employee.manager.department == dept_name }
    end

    def self.all
        @@all
    end


end
