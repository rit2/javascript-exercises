# Exercise 1: Counter App

**Time: 30-45 minutes**

## What You'll Learn
- `getElementById()`
- `addEventListener()`
- Changing text content
- Working with numbers

## Requirements

Build a counter that:
1. Shows a number starting at 0
2. Has 3 buttons:
   - **Increase** - adds 1 to the counter
   - **Decrease** - subtracts 1 from the counter
   - **Reset** - sets counter back to 0

## Bonus Challenges
- Change the color to green when positive, red when negative
- Disable decrease button when counter is at 0
- Add buttons for +5 and -5

## Hints

```javascript
// To change text:
element.textContent = 'new text';

// To convert string to number:
let num = parseInt(element.textContent);

// To change color:
element.style.color = 'red';
```

## Expected Result
```
Counter: 0
[Decrease] [Reset] [Increase]

// After clicking Increase 3 times:
Counter: 3
```
