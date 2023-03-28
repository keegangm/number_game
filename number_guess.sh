#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


# setup dialogue

  # initial dialogue: Enter your username and then read username

  # lookup username

  # if found
    
    # lookup games_played

    # lookup best_game

    # print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses
  
  #else

    # print Welcome, <username>! It looks like this is your first time here.

# game dialogue

  # generate SECRET_NUMBER

  # echo "Guess the secret number between 1 and 1000:"

  # loop
    
    # read GUESS_NUMBER

    # if GUESS_NUMBER < SECRET_NUMBER, 
    # then echo "It's higher than that, guess again:"

    # if GUESS_NUMBER > SECRET_NUMBER
    # then echo "It's lower than that, guess again:"

    # if GUESS_NUMBER not an integer
    # then echo "That is not an integer, guess again:"

    # if GUESS_NUMBER=SECRET_NUMBER
    # echo "You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!"


# NEEDS: SOME WAY TO LOG # OF LOOPS

# NEEDS: INSERT NUMBER OF LOOPS INTO A GAMES DATABASE
