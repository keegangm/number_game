#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


# setup dialogue

  # initial dialogue: Enter your username and then read username
  echo -e "~~ NUMBER GUESSING GAME ~~\n"
  echo Enter your username:
  read USERNAME

  # lookup username
  USERNAME_LOOKUP=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

  if [[ -z $USERNAME_LOOKUP ]]
  then

    # echo message
    echo Welcome, $USERNAME! It looks like this is your first time here.

    # insert new user into users table
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    LOOKUP_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

  else
    # lookup user_id, user_games, and best_game from users and games tables
    LOOKUP_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    LOOKUP_USER_GAMES=$($PSQL "SELECT count(game_id) FROM games WHERE user_id=$LOOKUP_USER_ID")
    LOOKUP_BEST_GAME=$($PSQL "SELECT min(loops_till_win) FROM games WHERE user_id=$LOOKUP_USER_ID")

   # print Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses
    echo Welcome back, $USERNAME! You have played $LOOKUP_USER_GAMES games, and your best game took $LOOKUP_BEST_GAME guesses.
  fi

# game dialogue
  # create game log in games table
  CREATE_GAME_LOG_EVENT=$($PSQL "INSERT INTO games(user_id, date_played) VALUES($LOOKUP_USER_ID, NOW()) RETURNING game_id")
  EXTRACT_GAME_ID=$(echo $CREATE_GAME_LOG_EVENT | sed 's/ INSERT 0 1//g')

  # generate SECRET_NUMBER
  SECRET_NUMBER=$(( ( RANDOM % 1000 ) +1 ))
  # test: echo $SECRET_NUMBER

  # insert $SECRET_NUMBER into games log table
  UPDATE_SECRET_NUMBER=$($PSQL "UPDATE games SET secret_number=$SECRET_NUMBER WHERE game_id=$EXTRACT_GAME_ID")

  # echo "Guess the secret number between 1 and 1000:"
  echo Guess the secret number between 1 and 1000:

  while true
  do
  ((GUESSES++))

  read GUESS

  if  [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo That is not an integer, guess again:
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo It\'s lower than that, guess again:
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo It\'s higher than that, guess again:
  elif [[ $GUESS -eq $SECRET_NUMBER ]]
  then 
    #insert guesses
    INSERT_GUESSES=$($PSQL "UPDATE games SET loops_till_win=$GUESSES WHERE game_id=$EXTRACT_GAME_ID")
    echo You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!
    exit

  fi

  done


# NEEDS: SOME WAY TO LOG # OF LOOPS

# NEEDS: INSERT NUMBER OF LOOPS INTO A GAMES DATABASE
