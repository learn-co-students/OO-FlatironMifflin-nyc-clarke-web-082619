class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|x| x.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name,salary,self)
    end

    def self.all_departments
        dept = []
        @@all.each{|x| dept << x.department}
        return dept
    end

    def self.average_age
        count = @@all.length.to_f
        sum = 0.0
        @@all.each{|x| sum+= x.age.to_f}
        average = sum/count
        return average
    end

    def self.all
        @@all
    end

end
