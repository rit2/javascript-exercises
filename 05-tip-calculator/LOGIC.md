# Tip Calculator - Logic Explanation

## How It Works

### HTML Structure
- Bill amount input
- Tip percentage input (default 15%)
- Number of people input (default 1)
- Calculate button
- Three result displays (tip, total, per person)

### JavaScript Logic

1. **Get Input Values**
   - Bill amount (convert to number)
   - Tip percentage (convert to number)
   - Number of people (convert to number, minimum 1)

2. **Calculate Tip**
   - Formula: `(bill × tipPercent) / 100`
   - Example: $100 bill, 15% tip = (100 × 15) / 100 = $15

3. **Calculate Total**
   - Formula: `bill + tipAmount`
   - Example: $100 + $15 = $115

4. **Calculate Per Person**
   - Formula: `total / numberOfPeople`
   - Example: $115 / 2 people = $57.50 each

5. **Display Results**
   - Format all values to 2 decimals with `.toFixed(2)`
   - Add $ symbol for currency display

### Key Concepts
- Mathematical calculations
- Percentage formula
- Division for splitting
- Number formatting
- Real-world application

### Auto-Calculate (Bonus)
- Add input event listeners
- Recalculate on any input change
- No need to click button repeatedly
