###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################

SECRET_NUMBER = 8
NUMBER_OF_TRIES = 3
i = 0

# def testnumber(guess)
#   if guess = secret_number
#     puts "Congratulations! You were right!"
  
#   elsif guess > secret_number  
#     puts "Nope - too high. Try again."
  
#   else  
#     puts "Nope - too low. Try again."
#   end

# end

# Intros

puts "Welcome to the secret_number game, 'created' by David, but really created by Brooks"
puts "What's your name?"
player_name = gets.strip
puts "Hi #{player_name}!"
puts "Guess a number between 1 and 10. You'll have 3 tries to guess the right number."

# Functionality

won = false

while i < NUMBER_OF_TRIES
  puts "Guess Number #{i + 1}: Make a guess..."
  guess = gets.strip.to_i

  if guess == SECRET_NUMBER
    puts "Congratulations! You were right!"
    won = true
    break
  elsif guess > SECRET_NUMBER
    puts "Nope - too high. Try again."
    i += 1

  else 
    puts "Nope - too low. Try again."
    i += 1
  end

end

puts "Thanks for playing, #{won ? "woo" : "scrub!"}! The secret number was #{SECRET_NUMBER}."

# if won 
#   puts "WOO!"
# else
#   puts "scrub"
# end

# puts "Thanks for playing"