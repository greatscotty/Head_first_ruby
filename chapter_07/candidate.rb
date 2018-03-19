=begin
class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace

    ## Initialize method using reg parameter setup 

    # def initialize(name, age, occupation, hobby = nil, birthplace) 
    #     self.name = name
    #     self.age = age
    #     self.occupation = occupation
    #     self.hobby = hobby
    #     self.birthplace = birthplace
    # end

    ## Initialize method using hash paramenters

    def initialize(name, options = {})
        self.name = name
        self.age = options[:age]
        self.occupation = options[:occupation]
        self.hobby = options[:hobby]
        self.birthplace = options[:birthplace]
    end

    def print_summary(candidate)
        puts "Name: #{candidate.name}"
        puts "Age: #{candidate.age}"
        puts "Occupation: #{candidate.occupation}"
        puts "Hobby: #{candidate.hobby}"
        puts "Birthplace: #{candidate.birthplace}"
    end 
end

However as using symbols for hash literals, and the has is the last arguament in assingment can leave off rockets and braces

print_summary(candidate)
=end

# Version #3 using keyword arguements 

class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace

    def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace: nil)
        self.name = name
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end

    def print_summary(candidate)
        puts "Name: #{candidate.name}"
        puts "Age: #{candidate.age}"
        puts "Occupation: #{candidate.occupation}"
        puts "Hobby: #{candidate.hobby}"
        puts "Birthplace: #{candidate.birthplace}"
    end 
end

# candidate = Candidate.new("Carle Barnes", 49, "Attorney", "Miami")

## First definition using standard hash convention
# candidate = Candidate.new("Amy Ngyugen", {:occupation => "Engineer", :age => 37, :birthplace => "Seattle"})

## 2nd definition w/o rockets, and hash as last arg
p candidate = Candidate.new("Amy Ngyugen", occupation: "Engineer", age: 37, birthplace: "Seattle")