class Animal

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
        puts "#{@name} Runs to the #{destination}."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end
end

class Dog < Animal
    
end

class Bird < Animal


    def talk 
        puts "#{@name} Chirps "
    end

    def move 
        puts "#{name} flys to the #{destination}."
    end
end

class Cat < Animal


    def talk 
        puts "#{@name} Meows "
    end

    def move 
        puts "#{@name} walks to the #{@destination}."
    end
end

class Armidillo < Animal
    
    def move(destination)
        puts "#{name} unrolls"
        super(destination)
    end
end

cat= Cat.new
cat.name = "marley"
cat.age = 5
cat.report_age
cat.talk

bob = Armidillo.new
bob.name = "Bob"
bob.move("burrow")