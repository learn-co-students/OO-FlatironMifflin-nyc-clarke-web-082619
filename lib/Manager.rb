class Manager

    attr_reader :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department   
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        ages = @@all.map {|manager| manager.age}
        ages.sum / ages.length
    end

    def self.all
        @@all
    end
end
