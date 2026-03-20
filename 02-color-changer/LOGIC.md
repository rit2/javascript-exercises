# Color Changer - Logic Explanation

## How It Works

### HTML Structure
- Button to trigger color change
- Display showing current color code

### JavaScript Logic

1. **Color Array**
   - Create array of hex color codes
   - Example: `['#FF6B6B', '#4ECDC4', '#45B7D1']`

2. **Random Selection**
   - Use `Math.random()` to get random decimal (0 to 1)
   - Multiply by array length
   - Use `Math.floor()` to round down to integer
   - This gives random index from array

3. **Apply Color**
   - Get random color from array using index
   - Change `document.body.style.backgroundColor`
   - Update display text with hex code

### Key Concepts
- Arrays and indexing
- `Math.random()` for randomness
- `Math.floor()` for rounding
- Changing CSS with JavaScript
- Template literals for display

### Formula
```javascript
randomIndex = Math.floor(Math.random() * colors.length)
// If colors.length = 12:
// Math.random() gives 0 to 0.999
// Multiply by 12 gives 0 to 11.999
// Math.floor() gives 0 to 11 (valid indices)
```
