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
        @manager.name
    end

    def tax_bracket
        @@all.select{|x|
            (x.salary - @salary <= 1000 && x.salary >= @salary) || (@salary - x.salary <= 1000 && @salary >= x.salary)
        }
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        @@all.select{|x| x.salary > num}
    end

    def self.find_by_department(dept)
        manager = Manager.all.find{|x| x.department == dept}
        return manager.employees[0]
    end

end
