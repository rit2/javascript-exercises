# Modal Popup - Logic Explanation

## How It Works

### HTML Structure
- Open button
- Modal overlay (hidden by default)
- Modal content box
- Close button (X)

### CSS
- Modal has `display: none` initially
- `.active` class changes to `display: flex`
- Overlay covers entire screen
- Content box centered in overlay

### JavaScript Logic

1. **Open Modal**
   - Add 'active' class to modal
   - Modal becomes visible

2. **Close Modal (X button)**
   - Remove 'active' class
   - Modal becomes hidden

3. **Close Modal (Click Outside)**
   - Listen for clicks on window
   - Check if click target is the modal overlay (not content)
   - If yes → close modal
   - If no → do nothing (clicked inside content)

### Key Concepts
- CSS class toggling for show/hide
- Event target checking
- Click outside detection
- Fixed positioning for overlay
- Flexbox for centering

### Why Check Event Target?
```javascript
if (e.target === modal) // Only overlay, not content
```
- Clicking content shouldn't close modal
- Only clicking dark overlay closes it
- Better user experience
