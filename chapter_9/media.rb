#Project: Media 
# Author: Scott J.
# Date: Friday 12/08/2017 19:38

module AcceptsComments
    def comments
        if @comments
            @comments
        else 
            @comment = []
        end 
    end 

    def add_comment(comment)
        comments << comment 
    end 
end

class Clip

    def play 
        puts "Playing #{object_id}"
    end 
end

class Video < Clip
    include AcceptsComments
    attr_accessor :resolution
end

class Music < Clip
    include AcceptsComments
    attr_accessor :beat_per_minute
end

class Photo

    def initialize
        @comment = []
    end
    def show
        puts "Showing #{object_id}"
    end
end