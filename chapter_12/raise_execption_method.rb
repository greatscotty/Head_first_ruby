class SmallOven
    attr_accessor :contents

    def turn_on
        puts "turning the oven on."
        @state = "On"
    end

    def turn_off
        puts "turning the oven off"
        @state = "Off"
    end

    def bake
        unless @state == "On"
            raise "your will need to turn the oven on!"
        end
        if @contents == nil
            raise "There's nothing in the oven"
        end
        "golden brown #{contents}"
    end
end