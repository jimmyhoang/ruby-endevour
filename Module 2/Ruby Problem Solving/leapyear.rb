# Write a Ruby program which accept the a year from the user and determines if that year is a leap year or not. If they user enters anything other then a valid year, the application should re-prompt the user for to enter a valid year.
print "Enter a year: "
year = gets.chomp

while true
    if year.to_i.to_s == year && year.to_i > 0
        break
    else
        puts "#{year} is not a valid year"
        print "Enter an actual year: "
        year = gets.chomp
    end
end

year = year.to_i

if year % 4 == 0 
  if year % 100 == 0
    if year % 400 == 0
      puts "#{year} is a leap year"
    else
      puts "#{year} is not a leap year"
    end
  else 
    puts "#{year} is a leap year"
  end
else
  puts "#{year} is not a leap year"
end

