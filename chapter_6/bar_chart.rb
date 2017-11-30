#Project: Bar Chart
# Author: Scott J.
# Date: Wednesday 11/29/2017 20:19

=begin
Below is a method named bar_chart. We’re going to use “string multiplication”
("$" * 3 returns "$$$", for example) to make a primitive bar chart, using the
return values from a block. Fill in the missing line of code in the middle of
the each block to yield value to a block, and “multiply” the string "$" by 
the block return value. Then print the result.
=end

def bar_chart(array)
    array.each do |value|
       p "#{"$" * yield(value)}"
    end
  end
  
  array = [1, 2, 3, 4, 5]
  
  puts "Multiplication:"
  # The next line of code should print:
  # $$$
  # $$$$$$
  # $$$$$$$$$
  # $$$$$$$$$$$$
  # $$$$$$$$$$$$$$$
  bar_chart(array) { |number| 3 * number }
  
  puts "Division:"
  # The next line of code should print:
  # $$$$$$$$$$$$$$$$$$$$
  # $$$$$$$$$$
  # $$$$$$
  # $$$$$
  # $$$$
  bar_chart(array) { |number| 20.0 / number }