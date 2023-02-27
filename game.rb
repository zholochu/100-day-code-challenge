# Guess the number game
# The computer picks a random number between 1 and 100
# The player has to guess the number in as few attempts as possible

number = rand(1..100)
guesses = 0

puts "Welcome to the Guess the Number game!"
puts "I'm thinking of a number between 1 and 100. Can you guess it?"

loop do
  print "Enter your guess: "
  guess = gets.chomp.to_i
  guesses += 1

  if guess == number
    puts "Congratulations! You guessed the number in #{guesses} attempts."
    break
  elsif guess > number
    puts "Too high. Guess again."
  else
    puts "Too low. Guess again."
  end
end
