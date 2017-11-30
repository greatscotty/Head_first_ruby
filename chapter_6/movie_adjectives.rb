#Project: Movie Review Parser Fining Adjectives for movie
# Author: Scott J.
# Date: Wednesday 11/29/2017 18:00

# Tasks
# Get the file contents
# Find the reviews for the movie
# Discard the review bylines
# Find the reviewer lines
# Capitilize each adjective and put in quoutes

# Input: File 
# Output: String 

require 'pry'

def movie_ad
    lines = []
    relevant_lines = []
    reviews = []
    adjectives = []

    review_file = File.open("reviews.txt") do |review_file|
        lines = review_file.readlines
    end 

    relevant_lines = lines.find_all {|line| line.include?("Truncated")}
    reviews = lines.reject {|line| line.include?("--")}

    def find_adjectives(string)

            words = string.split(" ")
            index = words.find_index("is")
            words[index+1]
    end

    adjectives = reviews.map do |review| 
        adjective = find_adjectives(review)
        "'#{adjective.capitalize}'"

    end

    puts "The critics agree, Truncated is:"
    puts adjectives
end 

movie_ad x