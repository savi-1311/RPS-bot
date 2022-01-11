#!/bin/bash
# This function reads the input from the keyboard for the go of player 2
function player1 {
  echo -p "Please enter your guess: "
  read player1
}

# This function reads the input from the keyboard for the go of player 2
function player2 {
  bot=$RANDOM
  bot=`expr $bot % 3 + 1`
#  bot=2
  if [[ $bot == 1 ]]; then
      echo "Bot chooses rock"
      player2="rock"
  fi
  if [[ $bot == 2 ]]; then
        echo "Bot chooses scissors"
        player2="scissors"
  fi
  if [[ $bot == 3 ]]; then
        echo "Bot chooses paper"
        player2="paper"
  fi
}

# This function compares the inputs from the two players and then outputs the
# result
function compare {
  if [[ $player1 == $player2 ]]; then
    echo "Its a Tie"
  elif [[ $player1 ==  "rock" && $player2 == "scissors" ]]; then
    echo "You Win"
  elif [[ $player1 == "sissors" && $player2 == "rock" ]]; then
    echo "Bot Wins"
  elif [[ $player1 == "scissors" && $player2 == "paper" ]]; then
    echo "You Win"
  elif [[ $player1 == "paper" && $player2 == "scissors" ]]; then
    echo "Bot Wins"
  elif [[ $player1 == "paper" && $player2 == "rock" ]]; then
    echo "You Win"
  elif [[ $player1 = "rock" && $player2 == "paper" ]]; then
    echo "Bot Wins"
  else
    echo "There was an error please try again"
    main
  fi
}

# This function asks the use if they would like to play again and will then
# call the main function of end the script
function playAgain {
  echo "Would you like to play again? (y/n): "
  read play
  if [[ $play == "y" ]]; then
    main
  fi
}

function main {
  player1
  player2
  compare
  playAgain
}

main