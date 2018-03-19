#Project: Guess My Number Game
# Author: Scott J.
# Date: Tuesday 09/26/2017 17:50

puts "Welcome to 'Guess my Number'", "What is your name?"
name = gets.chomp
puts "Welcome #{name}!"

target_number = rand(1..100)

guess_count_remaining = 10
guessed_it = false

until guess_count_remaining == 0 || guessed_it

puts "You have #{guess_count_remaining} guesses left to guess the number im thinking of between 1 and 100!"
guess_count_remaining -=1

puts "What number would you like to guess"
guess = gets.chomp.to_i

if target_number > guess
    puts "Oops. Your guess is too LOW!"
elsif target_number < guess
    puts "Oops. Your guess is too HIGH!"
else
    puts "Good job #{name}!! You guessed my number in #{10-guess_count_remaining}!"
    return guessed_it = true
end
end 

unless guessed_it 
    puts "sorry you didnt get it #{target_number} was the number I was thinking of"
end