class Employee
        attr_accessor :name, :salary, :manager
        @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        manager.name
    end

    def self.paid_over(num)
        self.all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(department)
      Manager.all.find {|manager| manager.department == department }.employees.first
    end
        
    def tax_bracket
        Employee.all.select {|employee| (employee.salary - self.salary).abs <= 1000 && (employee.salary - self.salary).abs != 0 }
    end
end
