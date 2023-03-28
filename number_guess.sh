#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


# setup dialogue

  # initial dialogue: Enter your username and then read username
  echo "Enter your username:"
  read USERNAME

  # lookup username
  USERNAME_LOOKUP=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

  if [[ -z $USERNAME_LOOKUP ]]
  then

    # echo message
    echo "Welcome, $USERNAME! It looks like this is your first time here."

    # insert new user into users table
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

  else
    # lookup user_id, user_games, and best_game from users and games tables
    LOOKUP_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    LOOKUP_USER_GAMES=$($PSQL "SELECT count(game_id) FROM games WHERE user_id=$LOOKUP_USER_ID")
    LOOKUP_BEST_GAME=$($PSQL "SELECT min(loops_till_win) FROM games WHERE user_id=$LOOKUP_USER_ID")

   # print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses
    echo "Welcome back, $USERNAME! You have played $LOOKUP_USER_GAMES games, and your best game took $LOOKUP_BEST_GAME guesses."
  fi

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
