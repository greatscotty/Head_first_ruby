#Project: Celestial Body Program
# Author: Scott J.
# Date: Friday 12/08/2017 13:45

require 'pry'

class CelestialBody
    attr_accessor :name, :type
end

bodies = Hash.new do |hash, key|
    body = CelestialBody.new 
    body.type = 'Planet'
    # binding.pry
    hash[key] = body
end 



bodies['Mars'].name = "Mars"
bodies['Europa'].name = "Europa"
bodies['Europa'].type = "Moon"
