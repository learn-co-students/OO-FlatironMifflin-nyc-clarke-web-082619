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

    def tax_bracket #good
      high_end = self.salary + 1000
      low_end = self.salary - 1000 
        @@all.select {|x| x.salary >= low_end && x.salary <= high_end } - [self]
    end 

    def self.all #good
        @@all 
    end 

    def self.paid_over(num) #good
        @@all.select {|x| x.salary > num } 
    end 

    def self.find_by_department(dprt) #good
        dept_mngr = Manager.all.find {|x| x.department == dprt }
        @@all.find {|x| x.manager == dept_mngr.name }
    end 

end
