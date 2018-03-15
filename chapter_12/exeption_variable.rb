class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

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
            raise OvenOffError, "You will need to turn the oven on First!"
        end
        if @contents == nil
            raise OvenEmptyError, "There's nothing in the oven"
        end
        "golden brown #{contents}"
    end
end

dinner = ['Turkey', nil, 'Pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
    begin
        oven.contents = item
        puts "Serving #{oven.bake}."
    rescue OvenEmptyError => error
        puts "Error: #{error.message}"
    rescue OvenOffError => error
        oven.turn_on
        # Now with RETRY!!!
        retry
    ensure
        oven.turn_off
    end
end