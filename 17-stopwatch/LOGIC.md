# Stopwatch - Logic Explanation

## How It Works

### HTML Structure
- Time display (HH:MM:SS)
- Start, Stop, Reset buttons

### JavaScript Logic

1. **Start**
   - Clear any existing interval
   - Start new interval (runs every 1000ms)
   - Increment seconds
   - Handle overflow (60 seconds → 1 minute, 60 minutes → 1 hour)
   - Update display

2. **Time Increment**
   - Add 1 to seconds
   - If seconds = 60 → reset to 0, add 1 to minutes
   - If minutes = 60 → reset to 0, add 1 to hours

3. **Display Format**
   - Use `.padStart(2, '0')` for leading zeros
   - Format: HH:MM:SS
   - Example: 01:05:09

4. **Stop**
   - Call `clearInterval()` to pause
   - Time values remain (not reset)

5. **Reset**
   - Stop interval
   - Set hours, minutes, seconds to 0
   - Update display to 00:00:00

### Key Concepts
- `setInterval()` for continuous counting
- Time overflow handling
- State preservation (stop vs reset)
- String formatting

### Time Overflow Logic
```
seconds = 59
seconds++ → 60
if (seconds === 60) {
    seconds = 0
    minutes++
}

minutes = 59
minutes++ → 60
if (minutes === 60) {
    minutes = 0
    hours++
}
```

### Start vs Stop vs Reset
- Start: Begin counting
- Stop: Pause (keeps current time)
- Reset: Stop and clear to 00:00:00
