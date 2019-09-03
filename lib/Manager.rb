class Manager
attr_accessor :name, :department, :age 
@@all = []
    
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self 
    end 

    def employees #good
        Employee.all.select {|x| x.manager == self }
    end 
   
    def hire_employee(name, salary) #good
        Employee.new(name, salary, self)
    end 

    def self.all #good
        @@all
    end 

    def self.all_departments #good
        depts = []
        @@all.each {|managers| depts << managers.department }
        return depts
    end 

    def self.average_age #good
        total_age = @@all.sum {|x| x.age }
        total_age / @@all.count 
    end 

end
