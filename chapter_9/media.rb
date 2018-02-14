#Project: Media 
# Author: Scott J.
# Date: Friday 12/08/2017 19:38
# Last Modified: February 13, 2018 9:48 PM 

module AcceptsComments
    def comments
        @comment ||= []
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
    include AcceptsComments
    def intialize
        @format = 'JPEG'
    end

    def show
     puts "Showing #{object_id}"
    end
end