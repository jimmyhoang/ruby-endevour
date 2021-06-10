# Write a Ruby program that given an integer number, rearranges its digits to create the largest number possible with those digits. If a non-integer number is entered, it should reprompt the person again for a number until a number is entered.

print "Enter a number: "
number = gets.chomp

while true
    if number.to_i.to_s == number
        break
    else
        print "Enter an actual number: "
        number = gets.chomp
    end
end

if number.to_i >= 0
  puts number.split('').map(&:to_i).sort.reverse.join('')
else 
  number = number.split('').delete_if{|i| i == "-"}.map(&:to_i).sort
  zero = 0
  
  number.each {|n| zero += 1 if n == 0 }
  number.delete_if{|i| i == 0}

  if number.length == 1
    zero.times {|i| number.insert(0, 0)}
  else
    zero.times {|i| number.insert(1, 0)}
  end

  puts "-#{number.join}"
end

