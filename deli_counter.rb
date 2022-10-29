# Write your code here.
require 'pry'

katz_deli = []

def line(array)
    if array.length == 0
        puts 'The line is currently empty.'
    else
        array_of_people = array.map.with_index do |p, index| 
            "#{index + 1}. #{p}"
        end
        string = array_of_people.join(' ')
        puts "The line is currently: #{string}"
    end
end

def take_a_number(array, name)
    array << name
    number_in_line = array.length
    puts "Welcome, #{name}. You are number #{number_in_line} in line."
end

def now_serving(array)
    if array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array[0]}."
        array.shift
    end
end

puts line([])
puts line(['Alex', 'Patrick', 'Enzo'])
take_a_number(katz_deli, 'Rose')
take_a_number(katz_deli, 'Katie')
take_a_number(katz_deli, 'Lila')
now_serving(katz_deli)