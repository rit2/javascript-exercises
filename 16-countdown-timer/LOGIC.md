# Countdown Timer - Logic Explanation

## How It Works

### HTML Structure
- Minutes and seconds input fields
- Start and Reset buttons
- Time display (MM:SS format)

### JavaScript Logic

1. **Start Timer**
   - Get minutes and seconds from inputs
   - Convert to total seconds: `(minutes × 60) + seconds`
   - Start interval that runs every 1000ms (1 second)

2. **Countdown Logic**
   - Subtract 1 from total seconds
   - Update display
   - If seconds reach 0 → stop timer, show alert

3. **Display Update**
   - Convert total seconds back to minutes and seconds
   - Minutes: `Math.floor(totalSeconds / 60)`
   - Seconds: `totalSeconds % 60` (remainder)
   - Format with leading zeros: `String(num).padStart(2, '0')`

4. **Reset**
   - Stop interval with `clearInterval()`
   - Reset inputs to default
   - Reset display to 00:00

### Key Concepts
- `setInterval()` for repeated execution
- `clearInterval()` to stop
- Time conversion (minutes ↔ seconds)
- Modulo operator (%) for remainder
- `.padStart()` for formatting

### Time Conversion
```
Input: 2 minutes, 30 seconds
Total: (2 × 60) + 30 = 150 seconds

After 1 second: 149 seconds
Display: 149 ÷ 60 = 2 minutes (floor)
         149 % 60 = 29 seconds (remainder)
Result: 02:29
```

### Why setInterval?
- Executes function repeatedly
- Every 1000ms = every 1 second
- Perfect for timers and clocks
