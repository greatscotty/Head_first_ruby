class Dog

    attr_reader :name, :age

    def name= (value)
        if value == ""
            raise "Name cannot be blank"
        end 
            @name = value 
    end

    def age= (value)
        if value < 0
            raise  "An age of #{value} isn't valid"
        end 
            @age = value
    end

    def talk 
        puts " #{name} says Bark"
    end
    def move (destination)
        puts "#{@name} Rruns to the #{destination}."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end
end

class Bird

    attr_accessor :name, :age, :destination

    def talk 
        puts "#{@name} Chirps "
    end

    def move 
        puts "#{name} flys to the #{destination}."
    end
end

class Cat

    attr_accessor :name, :age, :destination

    def talk 
        puts "#{@name} Meows "
    end

    def move 
        puts "#{@name} walks to the #{@destination}."
    end
end

dog = Dog.new
dog.age = 7
dog.name = "Finn"
dog.report_age
dog.talk
dog.move("bed")