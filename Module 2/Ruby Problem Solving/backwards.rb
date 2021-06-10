# Write a Ruby program which accept the user's first and last name and print them in reverse order with a space between them.

print "Enter your first and last name: "
name = gets.chomp

name = name.split.reverse.join(" ")
puts "Hello #{name}"