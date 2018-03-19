class Employee

    attr_reader :name, :salary

    def name= (name)
        if name == ""
            raise "Name cannot be blank"
        else
            @name = name
        end
    end

    def salary= (salary)
        if salary < 0
            raise "Salary cannot be less than 0"
        end
            @salary = salary.to_f
    end

    def initialize(name = "Unknown", salary = 0.0)
        self.name = name 
        self.salary = salary
    end 

    def print_pay_stub
       puts "Name: #{name}"
       puts format("Pay this Period: %.2f", (salary/365)*14)
    end
end

tammy = Employee.new
tammy.name = "Tammy"
tammy.salary = 40000

amy = Employee.new
amy.name = "Amy"
amy.salary = 50000

courtney = Employee.new("Courtney",80000.0)

puts amy.print_pay_stub
puts tammy.print_pay_stub
puts courtney.print_pay_stub