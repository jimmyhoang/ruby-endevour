# Write a Ruby program to find the maximum of two numbers. If something other than a number is entered, it should prompt the person again for the number until a number is entered.
first_number = 0
second_number = 0

until first_number.to_i.to_s == first_number
  print "Enter a number: "
  first_number = gets.chomp
end

until second_number.to_i.to_s == second_number
  print "Enter another number: "
  second_number = gets.chomp
end

max_number = [first_number, second_number].max

puts "Max: #{max_number}"