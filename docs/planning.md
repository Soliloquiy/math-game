# Classes
## - Player
  - Will keep track of the players score and turn
  - Initialize with:
    - @turn = true/false
    - @score = 3 
## - Score
  - Will update score based on if question was answered correctly
  - Will determine the score at the end of round
  - Initialize with:
    - imported player objects 

## - Turn
  - Will set the player turn
  - Initialize with:
    - imported player objects
## - Questions
  - Generate question
  - Ask questions and accept input for response
  - Return evaluation of true or false for question
  - Initialize with:
      - random numbers for question
      - question
      - correct answer
      - player response
      - evaluation