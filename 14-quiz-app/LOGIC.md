# Quiz App - Logic Explanation

## How It Works

### HTML Structure
- Question display
- Options container (dynamically filled)
- Next button
- Result screen (hidden initially)

### JavaScript Logic

1. **Questions Array**
   - Array of objects
   - Each has: question, options array, answer index
   - Example: `{q: "2+2?", options: ["3","4","5"], answer: 1}`

2. **Load Question**
   - Get current question from array
   - Display question text
   - Create option buttons dynamically
   - Add click handlers to each option

3. **Select Answer**
   - Mark selected option with CSS class
   - Remove previous selection
   - Store selected index

4. **Next Button**
   - Check if answer selected (if not, alert)
   - Compare selected index with correct answer
   - If correct → increment score
   - Move to next question
   - If last question → show results

5. **Show Results**
   - Hide quiz
   - Show result screen
   - Display score (correct/total)

6. **Restart**
   - Reset all variables
   - Load first question again

### Key Concepts
- State management (currentQ, score, selected)
- Dynamic element creation
- Array iteration
- Conditional rendering
- Score tracking

### Data Flow
```
Load Question → User Selects → Click Next → 
Check Answer → Update Score → Next Question → 
Repeat → Show Results
```
