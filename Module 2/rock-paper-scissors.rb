def play_game(player_one, player_two)

    return "Tie" if player_one == player_two

    if player_one == "rock" && player_two == "paper"
        puts "Paper covers rock."
        puts "Player 2 wins."
    elsif player_one == "rock" && player_two == "scissors"
        puts "Rock crushes scissors"
        puts "Player 1 wins."
    elsif player_one == "paper" && player_two == "scissors"
        puts "Scissor cuts paper."
        puts "Player 2 wins."
    elsif player_one == "paper" && player_two == "rock"
        puts "Paper covers rock."
        puts "Player 1 wins."
    elsif player_one == "scissors" && player_two == "paper"
        puts "Scissors cuts paper."
        puts "Player 1 wins."
    elsif player_one == "scissors" && player_two == "rock"
        puts "Rock crushes scissors"
        puts "Player 2 wins."
    end
end


puts "Rock Paper Scissors"
valid_answers = ["rock", "paper", "scissors"]
cheat_message = "No cheaters! Only Rock, Paper, or Scissors are allowed."

print "Player 1 - Enter your selection: "
player_one = gets.chomp.downcase

print "Player 2 - Enter your selection: "
player_two = gets.chomp.downcase

if valid_answers.include? player_one
    if valid_answers.include? player_two
        puts play_game(player_one, player_two)
    else
        puts cheat_message
    end
else
    puts cheat_message
end