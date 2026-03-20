# Quote Generator - Logic Explanation

## How It Works

### HTML Structure
- Quote display area
- Author display area
- Button to get new quote

### JavaScript Logic

1. **Quotes Array**
   - Array of objects
   - Each object has `text` and `author` properties
   - Example: `{text: "Quote here", author: "Person"}`

2. **Random Selection**
   - Generate random index: `Math.floor(Math.random() * quotes.length)`
   - Get quote object from array using index

3. **Display Quote**
   - Update quote element with quote text
   - Update author element with author name
   - Add quotation marks and dash for formatting

4. **Button Click**
   - Each click generates new random number
   - Selects different quote
   - Updates display

### Key Concepts
- Array of objects
- Object properties (dot notation)
- Random selection algorithm
- Template literals for formatting
- Event listeners

### Data Structure
```javascript
quotes = [
  {text: "Quote 1", author: "Author 1"},
  {text: "Quote 2", author: "Author 2"}
]
// Access: quotes[0].text → "Quote 1"
// Access: quotes[0].author → "Author 1"
```
