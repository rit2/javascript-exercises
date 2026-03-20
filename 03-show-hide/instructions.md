# Exercise 3: Show/Hide Content

**Time: 30 minutes**

## What You'll Learn
- Toggling CSS classes
- `classList.toggle()`
- Conditional logic
- Changing button text

## Requirements

Build a page that:
1. Has some text content (paragraph or div)
2. Has a button that says "Hide"
3. When clicked:
   - Hides the content
   - Button text changes to "Show"
4. Clicking again shows the content and changes button back to "Hide"

## Bonus Challenges
- Add a fade animation when showing/hiding
- Add multiple sections that can be toggled independently
- Add "Show All" and "Hide All" buttons

## Hints

```javascript
// Toggle a CSS class
element.classList.toggle('hidden');

// Check if element has a class
if (element.classList.contains('hidden')) {
    // do something
}

// Change button text
button.textContent = 'New Text';
```

## CSS Hint
```css
.hidden {
    display: none;
}
```
