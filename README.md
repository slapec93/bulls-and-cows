# Bulls and Cows

## Setup
Before the workshop starts, please make sure you can run the RSpec tests in this repo.

```
git clone https://github.com/gaborszakacs/bulls-and-cows.git
cd bulls-and-cows
bundle install --binstubs
bin/rspec
```

You should get something similar to this:

```
>bin/rspec

BullsAndCows
  works

Finished in 0.00111 seconds (files took 0.0981 seconds to load)
1 example, 0 failures
```

You might need to run `gem install bundler` before running `bundle install`


## Game description

The first player, the Codemaker thinks of a 4-digit secret number. The digits must be all different. Then the other player, the Codebreaker, tries to guess the Codemaker's number, who gives the number of matches in response.

If the matching digits are in their right positions, they are "bulls", if in different positions, they are "cows". Example:

- Secret number:     4271
- Codebreaker's try: 1234
- Codemaker's answer: +--

Which means: 3 matches (3 signs) 1 match with right position (a bull as plus sign) and 2 other matches (cows, as minus signs).
(The bull is "2", the cows are "4" and "1".)

Your task is to implement the guess analyzing part of the game.

## Task 1
A game can be started with a secret number (as if the Codemaker thought of a number). Then a guess can be made, the proper answer for that guess gets returned.

### Rules
Use TDD with Ping-Pong Programming

- Dev A writes a simple test and watches it fail, then passes the keyboard.
- Dev B writes the minimum code to make that test pass and might do some refactoring.
- Dev B writes another test and watches it fail, then passes the keyboard.
- Dev A writes the minimum code to make that test pass.
- Etc.

Pls. write very simple tests, proceed gradually. You can make suggestions to your pair, but you cannot write code if it's not your turn.


## Task 2
Add error handling (via TDD). The guess should be 4 chars, an error should be raised if it's higher or lower (with different error messages).

## Task 3
Add table testing. The less experienced Ruby dev should implement the loop, then add the test cases one-by-one.

## Task 4
Add an `ask_for_help` method which tells a SmartGuy the previous guesses and answers and returns with a guess the SmartGuy suggested. Use mocks to test it out properly. Please do this on your own, find the `mock-task` to get a bootstrapped version of the code.


