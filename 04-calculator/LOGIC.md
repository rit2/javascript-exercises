# Calculator - Logic Explanation

## How It Works

### HTML Structure
- Two number inputs
- Four operation buttons (+, -, ×, ÷)
- Result display

### JavaScript Logic

1. **Get Input Values**
   - Use `parseFloat()` to convert input strings to numbers
   - Use `|| 0` as fallback if input is empty

2. **Addition**
   - Add num1 + num2
   - Display result

3. **Subtraction**
   - Subtract num1 - num2
   - Display result

4. **Multiplication**
   - Multiply num1 * num2
   - Display result

5. **Division**
   - Check if num2 is 0 (can't divide by zero)
   - If zero → show error message
   - Otherwise → divide and use `.toFixed(2)` for 2 decimals

### Key Concepts
- Type conversion (`parseFloat()`)
- Default values with OR operator (`||`)
- Error handling (division by zero)
- Decimal formatting (`.toFixed()`)
- Multiple event listeners

### Why parseFloat?
- `parseInt()` only handles whole numbers
- `parseFloat()` handles decimals (3.14, 2.5, etc.)
- Returns NaN if invalid, which we handle with `|| 0`
