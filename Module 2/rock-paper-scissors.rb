def play_game(player_one, player_two)
    if player_one == "rock" && player_two == "paper"
        yield("Paper covers rock.", "Player 2")
    elsif player_one == "rock" && player_two == "scissors"
        yield("Rock crushes scissors", "Player 1")
    elsif player_one == "paper" && player_two == "scissors"
        yield("Scissor cuts paper.", "Player 2")
    elsif player_one == "paper" && player_two == "rock"
        yield("Paper covers rock.", "Player 1")
    elsif player_one == "scissors" && player_two == "paper"
        yield("Scissors cuts paper.", "Player 1")
    elsif player_one == "scissors" && player_two == "rock"
        yield("Rock crushes scissors", "Player 2")
    elsif player_one == player_two
        yield("Tie", nil)
    end
end

puts "Rock Paper Scissors"
valid_answers = ["rock", "paper", "scissors"]
winner = false
p1_wins = 0
p2_wins = 0

until winner
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

    play_game(player_one, player_two) do | text, winner |
        puts text
        if winner == "Player 1"
            p1_wins += 1
        elsif winner == "Player 2"
            p2_wins += 1
        end
    end

    if p1_wins == 2
        winner = true
        puts "Player 1 wins!"
    elsif p2_wins == 2
        winner = true
        puts "Player 2 wins!"
    end
end



