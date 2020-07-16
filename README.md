# Tic-tac-toe

## [Play on Repl.it](https://repl.it/@HappyFrog/tic-tac-toe#bin/main.rb)

An assignment for the OOP section of Ruby Programming for The Odin Project to practice and showcase object oriented programming.
Updated to practice automated testing.

## Features

* A simple command line tic tac toe game for two players
* Works as you'd expect!

## Version History

2.0 Completed 16 / 7 / 2020. Added automated testing suite. Refactored code to be cleaner and shorter. Added colorful output to terminal via colorize gem.

1.0 completed 26 / 5 / 2020.

## Future Updates

### Planned Features

* Add simple / random AI
* Add smarter AI
* Add ability to reset on end of game
* Add repl.it link DONE
* Add slightly more polish, ie more detailed instructions, a welcome message etc

### Code Refactoring

* A pass on public / private methods DONE
* Reduce size of Referee class? DONE
* Separate objects into different files? DONE
* More efficient / clean implementation of win condition, smaller case statement DONE

## Reflections

### Testing (2.0)

Generally a satisfying experience. Reasonably comfortable with simple tests (ie making sure methods return what you want) but need some more practice on more complex testing. Yet to really use doubles etc. Felt somewhat lost on how to test the referee object, which loops the entire game with only a single public method.
Lots to learn but a decent first attempt.

### Testing Refactor (2.0)

When going back to add tests, I did some refactoring to implement some of the lessons I've learnt in the ~7 weeks since I originally completed the project.
While I would probably write many things very different if I started from scratch, I did my best to make change that weren't too disruptive to the original implementation. I changed some of the most bloated functions into simpler implementations (eg changed checking win conditions from a huge if/elsif statement to an enumerable) and attempted to make variable names more descriptive, or reorganise code to be cleaner, shorter and more readable in general. In general I'm happy with the result and think the code on the whole is in a much better state.

### Successes (1.0)

Was finished reasonably quickly without too many major hiccups or bugs compared to how daunting the project seemed at the start - I learnt a lot of OOP techniques but was unsure where to start from a design standpoint. While I'm reasonably happy with the current implementation as a first attempt without much guidance I will need to study other programs to be able to properly assess it and what to improve.

### Challenges (1.0)

Following on from the above, I'm unsure how good or bad the design is. It's hard to tell if it's simply procedural code wrapped in classes and objects. That aside I'm fairly sure my main class and object is somewhat bloated and should be stripped down into one or two more classes.

## Follow Up (1.0)

* Look at the provided walkthrough and solution and compare to own implementation
* Seek feedback online / on discord
* Keep reading Sandi Metz book
