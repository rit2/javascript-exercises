# Filter List - Logic Explanation

## How It Works

### HTML Structure
- Search input field
- List of items (pre-populated)

### JavaScript Logic

1. **Get All Items**
   - Use `querySelectorAll()` to get all list items
   - Returns NodeList (array-like)

2. **Listen to Input**
   - Use `input` event (fires on every keystroke)
   - Get search term and convert to lowercase

3. **Filter Logic**
   - Loop through each item
   - Get item text and convert to lowercase
   - Check if text includes search term
   - If match → show item (remove 'hidden' class)
   - If no match → hide item (add 'hidden' class)

4. **Case-Insensitive Search**
   - Convert both search term and item text to lowercase
   - "Apple" matches "apple", "APPLE", "aPpLe"

### Key Concepts
- `querySelectorAll()` for multiple elements
- `input` event for real-time updates
- `.includes()` method for string matching
- `.toLowerCase()` for case-insensitive search
- `forEach()` to loop through items
- CSS class toggling for show/hide

### Why Input Event?
- Fires on every character typed
- Real-time filtering (instant feedback)
- Better UX than waiting for button click
