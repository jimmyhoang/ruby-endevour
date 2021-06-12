# Write a Ruby program which accept the a year from the user and determines if that year is a leap year or not. If they user enters anything other then a valid year, the application should re-prompt the user for to enter a valid year.
def get_year
  print "Enter a year: "
  return year = gets.chomp
end

year = get_year

until year.to_i.to_s == year && year.to_i > 0
  puts "#{year} is not a valid year"
  year = get_year
end

if year.to_i % 4 == 0 
  if year.to_i % 100 == 0
    if year.to_i % 400 == 0
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

