def play_game(player_one, player_two)

    return "Tie" if player_one == player_two

    if player_one == "rock" && player_two == "paper"
        "Paper covers rock."
    elsif player_one == "rock" && player_two == "scissors"
        "Rock crushes scissors"
    elsif player_one == "paper" && player_two == "scissors"
        "Scissor cuts paper."
    elsif player_one == "paper" && player_two == "rock"
        "Paper covers rock."
    elsif player_one == "scissors" && player_two == "paper"
        "Scissors cuts paper."
    elsif player_one == "scissors" && player_two == "rock"
        "Rock crushes scissors"
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