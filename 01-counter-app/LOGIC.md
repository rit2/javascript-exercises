# Counter App - Logic Explanation

## How It Works

### HTML Structure
- Display element showing the current count (starts at 0)
- Three buttons: Decrease, Reset, Increase

### JavaScript Logic

1. **Get Elements**
   - Select the counter display and all three buttons using `getElementById()`

2. **Decrease Button**
   - Get current counter value
   - Convert to number with `parseInt()`
   - Subtract 1
   - Update display

3. **Increase Button**
   - Get current counter value
   - Convert to number
   - Add 1
   - Update display

4. **Reset Button**
   - Set counter back to 0
   - Update display

5. **Color Change (Bonus)**
   - Check if counter > 0 → Green
   - Check if counter < 0 → Red
   - Check if counter = 0 → Default color
   - Change text color using `style.color`

### Key Concepts
- DOM manipulation (`textContent`)
- Event listeners (`addEventListener`)
- Type conversion (`parseInt()`)
- Conditional logic (if/else)
- CSS styling with JavaScript
