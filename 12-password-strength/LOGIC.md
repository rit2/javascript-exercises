# Password Strength - Logic Explanation

## How It Works

### HTML Structure
- Password input field
- Strength meter bar (empty div)
- Strength text display

### JavaScript Logic

1. **Input Event**
   - Fires on every keystroke
   - Get password value and length

2. **Strength Calculation**
   - Length 0 → No strength, bar width 0%
   - Length < 6 → Weak, bar width 33%, red color
   - Length < 10 → Medium, bar width 66%, orange color
   - Length >= 10 → Strong, bar width 100%, green color

3. **Update Display**
   - Change bar width with CSS
   - Change bar color with CSS class
   - Update text label

### Key Concepts
- Real-time validation
- Progressive feedback
- CSS transitions for smooth animation
- Conditional logic (if/else if/else)
- Visual feedback with colors

### Strength Levels
```
0 chars     → -        (0%, no color)
1-5 chars   → Weak     (33%, red)
6-9 chars   → Medium   (66%, orange)
10+ chars   → Strong   (100%, green)
```

### Enhancement Ideas
- Check for uppercase letters
- Check for numbers
- Check for special characters
- More detailed strength calculation
