# CSC256-ZombieAttack

In this assignment you are given a C++ program (game) where Zombies attack a Human whose X and Y coordinates are specified on the command line.

Your job is to implement the functions:
* updateZombies
* moveZombie

In ARM based assembler.

The .cc file is provided here in the repository for reference.

There are two version of the Assembler files (ending in `AS` for **Apple Silicon**, and `PI` for **Raspberry PI**).  There is one Makefile that will work in BOTH environments.

The game is grid based and the Zombies have a starting point and move towards the Human with each move (run automatically).  When a Zombie finally lands on the same square as the Human, the game is over.


There are two files provided (for each platform) ZombieAttack.s and ZombieHelp.s (note the actual names are `ZombieAttackAS.s`, `ZombieHelpAS.s`, `ZombieAttackPI.s`, and `ZombieHelpPI.s`).

The file ZombieAttack.s has all the C++ misc generated code and the main function.

The file `ZombieHelp.s` contains the functions updateZombies, and moveZombie with just the from setup and return functionality.  Your job is to implement these two functions.

This is the ONLY file you will modify.

Be sure to remember how parameters are passed in and feel free to use the internet to help lookup individual instructions.   Also use prior assignments and look at how main sets up the parameters for `updateZombies`.

I expect a functioning program which you create by running `make` from the command line.  Other options it run are `make clean` which removes the executable and the object files, and `make run` which will execute the program with specified coordinates for the human.

Comment your code!  Don’t tell me what the assembler instruction does, give me the logic, the what are you actually doing in the comments.


Include a header in ZombieHelp.s that includes:
* Your Name
* Your Student ID
* Your Github name



Include a writeup using the [writeup template](https://docs.google.com/document/d/1IqM1oJH2ZtZ2Ub9w-r4qxHckGmn_x50sFtuZRbuQWmQ/edit?usp=sharing) and be sure to include how you approached the problem and screen shots of the **make clean** and **make**, and the **make run**.

Rubric

| Grade Item                                   | Grade Points                                  |
|:---------------------------------------------|----------------------------------------------:|
| Standard Header                              |   2                                           |
| Correct (and correctly achieved) output      |  25                                           |
| Proper implementation of updateZombies       |  25                                           |
| Proper implementation of moveZombie          |  25                                           |
| Code Comments                                |  10                                           |
| Writeup                                      |  13 (Description, Compilation, Sample Output) |
