class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def tax_bracket
        tax_bracket_members = @@all.select {|employee| employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000}
        tax_bracket_members.delete(self)
        tax_bracket_members
        # removed self from the tax_bracket
    end

    def self.find_by_department(department)
       self.all.find {|employee| employee.manager.department == department} 
        
    end

    def self.paid_over(num)
        self.all.select {|employee| employee.salary > num}
    end

    def self.all
        @@all
    end
end
