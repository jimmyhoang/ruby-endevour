# Create a code-cracking game that randomly generates a 4 digit code, where each digit has the value of 1-6
puts "MASTERMIND"
code = Array.new(4) {rand(1...7)}
code_guess = ""
guesses = 0

until code == code_guess
  hint = []
  guesses += 1

  print "[#{guesses}] Enter your guess: "
  code_guess = gets.chomp.split('').map(&:to_i)

  code.each_with_index { |num, i|
    if num == code_guess[i].to_i
        hint << "X"
        next
    elsif code_guess.include? num
        hint << "x"
    end      
  }

  puts "#{hint.sort_by{|h| [h.upcase, h]}.join}"

end

puts "Nice work! You took #{guesses} #{guesses == 1 ? :"guess" :"guesses"}!"