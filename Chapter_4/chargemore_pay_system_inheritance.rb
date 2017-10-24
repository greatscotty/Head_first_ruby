class Employee
    
        attr_reader :name

        def initialize (name = "Anonymous")
            self.name = name 
        end
    
        def name= (name)
            if name == ""
                raise "Name cannot be blank"
            end
                @name = name
        end
    
        def print_name
            puts "Name: #{name}"
        end 
    end

    class SalariedEmployee < Employee

        attr_reader :salary

        def initialize(name = "Anonymous", salary = 0.0)
            super(name)
            self.salary = salary
        end

        def salary= (salary)
            if salary < 0
                raise "Salary cannot be less than 0"
            end
                @salary = salary.to_f
        end

        def print_pay_stub
            print_name
            puts format("Pay this Period: %.2f", (salary/365)*14)
         end

    end
    
    class HourlyEmployee < Employee

        attr_reader :hourly_rate, :hours_worked

        def initialize (name = "Anonymous", hourly_rate = 11.50, hours_worked = 0)
            super(name)
            self.hourly_rate = hourly_rate
            self.hours_worked = hours_worked
        end

        def hourly_rate= (hourly_rate)

            if hourly_rate < 11.50
                raise "Hourly rate cannot be less than 11.50"
            end
            @hourly_rate = hourly_rate.to_f
        end

        def hours_worked= (hours_worked)
            if hours_worked < 0
                raise "Hours worked cannot be less than 0"
            end
            @hours_worked = hours_worked.to_f
        end

        def print_pay_stub
            print_name
            puts format("Pay this Period: %0.2f", (hourly_rate * hours_worked) *2)
        end

    end


    tammy = SalariedEmployee.new
    tammy.name = "Tammy"
    tammy.salary = 40000
    
    amy = SalariedEmployee.new
    amy.name = "Amy"
    amy.salary = 50000

    scott = SalariedEmployee.new("Scott", 45000)
    
    courtney = HourlyEmployee.new
    courtney.name = "Courtney"
    courtney.hourly_rate = 11.50
    courtney.hours_worked = 40

    cody = HourlyEmployee.new("Cody", 15.00, 40)

    
    puts amy.print_pay_stub
    puts tammy.print_pay_stub
    puts courtney.print_pay_stub
    puts scott.print_pay_stub
    puts cody.print_pay_stub