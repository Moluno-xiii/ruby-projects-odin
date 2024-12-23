# Hangman Game

Welcome to the Hangman Game! This classic word-guessing game challenges you to decipher a random word within a limited number of guesses. Test your vocabulary and have fun!

---

## 🎮 How It Works

- The game selects a random word from a predefined dictionary (`google-10000-english.txt`)
- Players have **25 attempts** to guess the word
- Players guess one letter at a time
- Correct guesses reveal the letter(s) in the word
- Incorrect guesses reduce the remaining attempts
- The game ends when:
  - The player correctly guesses the word
  - The player runs out of attempts

---

## ✨ Features

- Randomly selects words with lengths between 6 and 12 characters
- Tracks guessed letters to prevent repeated guesses
- Provides feedback for each guess (correct or incorrect)
- Displays the current state of the word (e.g., `h__g_a_`)
- Reads from a file containing thousands of English words

---

## 💻 Setup Instructions

### Prerequisites

- Ruby installed on your machine (version 2.7+ recommended)
- Text file containing word list (`google-10000-english.txt`)

### Installation Steps

1. **Clone this repository:**

   ```bash
   git clone https://github.com/your-username/hangman-game.git
   cd hangman-game
   ```

2. **Ensure word list file is present:**

   ```bash
   # The google-10000-english.txt should be in the root directory
   ```

3. **Run the game:**
   ```bash
   ruby hangman.rb
   ```

---

## 🎯 Gameplay Instructions

1. **Start the game:**

   - The game will select a random word
   - You'll see underscores representing each letter: `_ _ _ _ _`

2. **Make your guess:**

   - Type a single letter and press Enter
   - The game is case-insensitive

3. **Watch for feedback:**

   - Correct guesses: Letters will be revealed in the word
   - Incorrect guesses: Number of remaining attempts will decrease
   - Duplicate guesses: You'll be notified if you repeat a letter

4. **Win or Lose:**
   - **Win:** Successfully reveal all letters in the word
   - **Lose:** Run out of attempts (25 maximum)

---

## 🛠️ Technical Details

### Class Structure

```ruby
class HangMan
  # Main game components:
  - random_word: Selected word to guess
  - ciphered_word: Current state of guessed letters
  - number_of_guesses: Remaining attempts
  - guessed_words: Track of previous guesses
```

### Key Methods

- `initialize`: Sets up new game instance
- `start_game`: Controls main game loop
- `guess`: Handles player input
- `check_input?`: Validates guesses
- `decipher`: Updates revealed letters
- `init_random_word`: Selects random word from file

---

## 👨‍💻 Author

**Moluno Chukwuemeke Progress**  
[GitHub](https://github.com/Moluno-xiii) | [Twitter](https://twitter.com/moluno_cp)

---

## 🙏 Acknowledgments

- Word list sourced from Google's 10,000 most common English words
- Inspired by the classic **Hangman** paper-and-pencil game

If you enjoy this game, feel free to star the repository! ⭐
Enjoy playing and testing your vocabulary 🎮

---
