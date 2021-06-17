def play_game(player_one, player_two)
    if player_one == "rock" && player_two == "paper"
        yield("Paper covers rock.", "Player 2", false)
    elsif player_one == "rock" && player_two == "scissors"
        yield("Rock crushes scissors", "Player 1", false)
    elsif player_one == "paper" && player_two == "scissors"
        yield("Scissor cuts paper.", "Player 2", false)
    elsif player_one == "paper" && player_two == "rock"
        yield("Paper covers rock.", "Player 1", false)
    elsif player_one == "scissors" && player_two == "paper"
        yield("Scissors cuts paper.", "Player 1", false)
    elsif player_one == "scissors" && player_two == "rock"
        yield("Rock crushes scissors", "Player 2", false)
    elsif player_one == player_two
        yield("Tie", nil, true)
    end
end

puts "Rock Paper Scissors"
valid_answers = ["rock", "paper", "scissors"]
play_again = true

while play_again
    player_one = ""
    player_two = ""

    until (valid_answers.include? player_one) && (valid_answers.include? player_two)
        print "Player 1 - Enter your selection: "
        player_one = gets.chomp.downcase
    
        print "Player 2 - Enter your selection: "
        player_two = gets.chomp.downcase

        unless (valid_answers.include? player_one) && (valid_answers.include? player_two)
            puts "No cheaters! Only Rock, Paper, or Scissors are allowed."
        end

    end

    play_game(player_one, player_two) do | text, winner, again |
        puts text
        puts "#{winner} wins!" if winner
        play_again = again
    end
end



