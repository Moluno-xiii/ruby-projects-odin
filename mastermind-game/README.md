# 🎮 MasterMind Command-Line Game

MasterMind is a fun and challenging command-line game where players attempt to guess a secret combination of **three colors** chosen randomly. Your goal is to identify the correct colors and their exact positions within a limited number of attempts.

## 🚀 How to Play

1. **Start the game:** Run the script in your terminal using Ruby.
2. **Guess the colors:** Input 3 colors from the list provided when the game begins.
3. **Feedback:** After each guess, you'll receive feedback:
   - Number of **correct colors** (colors in the secret combination, but possibly in the wrong positions).
   - Number of **correct positions** (colors that are in the correct positions).
4. **Win or Lose:**
   - Win the game if you guess all 3 colors and their positions correctly.
   - Lose the game if you run out of guesses.

---

## 🎨 Available Colors

When the game starts, you'll see the full list of available colors:

```
red, blue, green, yellow, orange, purple, pink, black, white, grey,
brown, turquoise, silver, gold, copper, bronze, peach, magenta, cyan, teal, coral, lime, maroon, burgundy, violet, indigo, sapphire, emerald, ruby, amber, honey, cream, beige, lemon
```

Choose any **three** from the above list when making a guess.

---

## 💻 Setup and Installation

To play MasterMind, ensure you have **Ruby** installed on your system.

### 1. Clone the Repository

```bash
git https://github.com/Moluno-xiii/ruby-projects-odin.git
cd mastermind-game
```

### 2. Run the Game

```bash
ruby mastermind.rb
```

---

## 📜 Rules

- You have **12 guesses** to figure out the correct color combination.
- Input your guesses as three color names separated by spaces (e.g., `red blue green`).
- After each guess, the program will tell you:
  - How many colors are correct.
  - How many positions are correct.

Example Output:

```
Available colors are red, blue, green, yellow...
Guess 3 colors: red blue green
You guessed wrong, you have 11 guesses left.
You have 2 colors correct and 1 position correct.
```

---

## 🎯 Winning and Losing

- If you guess the correct combination of colors and positions, you win:

```
You guessed right, you win!!
```

- If you run out of guesses, the game will reveal the correct combination:

```
You're out of guesses, You Lose! The correct answer was [red, blue, green]
```

---

## 🛠️ Code Overview

The game is built entirely in Ruby with:

- **`initialize` method:** Sets the random color combination and number of guesses.
- **`new_game` method:** Main game loop to track guesses and provide feedback.
- **`guess` method:** Collects user input.
- **`check_input?` method:** Provides feedback on correct colors and positions.

---

## 👨‍💻 Author

**Moluno Chukwuemeke**  
[GitHub](https://github.com/Moluno-xiii) | [Twitter](https://twitter.com/moluno_cp)

---

## ⭐ Acknowledgements

Inspired by the classic **MasterMind** board game.

If you enjoy this game, feel free to star the repository! ⭐

---

Enjoy playing and testing your puzzle-solving skills! 🎮
