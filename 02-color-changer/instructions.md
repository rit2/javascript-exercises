# Exercise 2: Color Changer

**Time: 30-45 minutes**

## What You'll Learn
- Changing CSS styles with JavaScript
- Working with arrays
- Random numbers
- `Math.random()` and `Math.floor()`

## Requirements

Build a page that:
1. Has a button "Change Color"
2. When clicked, changes the background to a random color
3. Shows the color name or hex code on screen

## Bonus Challenges
- Add a "Reset" button to go back to white
- Show the hex code of the current color
- Add buttons for specific colors (Red, Blue, Green, etc.)
- Create a "Random Gradient" button

## Hints

```javascript
// Array of colors
const colors = ['red', 'blue', 'green', 'yellow', 'purple'];

// Get random number between 0 and array length
const randomIndex = Math.floor(Math.random() * colors.length);

// Change background color
document.body.style.backgroundColor = colors[randomIndex];

// For hex colors:
const hexColors = ['#FF5733', '#33FF57', '#3357FF'];
```

## Expected Result
```
Current Color: white
[Change Color]

// After clicking:
Current Color: #FF5733
[Change Color]
```
