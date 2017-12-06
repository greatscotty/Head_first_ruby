#Project: Voritn System
# Author: Scott J.
# Date: Friday 12/01/2017 15:47

lines = []

File.open("votes.txt") do |file|
    lines = file.readlines
end 

votes = Hash.new(0)

lines.each do |line|
    name = line.chomp.capitalize
    votes[name] += 1
end 

votes.each do |name, count|
    puts " #{name}: #{count}"
end 


