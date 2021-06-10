# Create a code-cracking game that randomly generates a 4 digit code, where each digit has the value of 1-6
puts "MASTERMIND"
code = Array.new(4) {rand(1...7)}

guesses = 0
code_guess = ""
correct = false

until correct
  hint = []
  guesses += 1

  print "[#{guesses}] Enter your guess: "
  code_guess = gets.chomp

  code_guess = code_guess.split('').map(&:to_i)

  if code == code_guess
    correct = true
    break
  end

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

if guesses == 1
  puts "Nice work! You took #{guesses} guess."
else
  puts "Nice work! You took #{guesses} guesses."
end