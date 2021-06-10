# Write a Ruby program to find the maximum of two numbers. If something other than a number is entered, it should prompt the person again for the number until a number is entered.

print "Enter a number:" 
first_number = gets.chomp

while true
    if first_number.to_i.to_s == first_number
        break
    else
        print "Enter an actual number: "
        first_number = gets.chomp
    end
end

print "Enter another number: "
second_number = gets.chomp

while true
    if second_number.to_i.to_s == second_number
        break
    else
        print "Enter an actual number: "
        second_number = gets.chomp
    end
end


max_number = [first_number, second_number].max

puts "Max: #{max_number}"