# Accordion Menu - Logic Explanation

## How It Works

### HTML Structure
- Multiple accordion items
- Each has header (button) and content (hidden)
- Icon rotates when open

### JavaScript Logic

1. **Header Click**
   - Get the content div (next sibling of header)
   - Check if currently active
   - Close all other items
   - If wasn't active → open clicked item

2. **Close All**
   - Loop through all headers
   - Remove 'active' class from headers
   - Remove 'active' class from content divs
   - Collapses everything

3. **Open One**
   - Add 'active' class to clicked header
   - Add 'active' class to its content
   - Only one item open at a time

4. **Icon Rotation**
   - CSS rotates icon when header is active
   - + becomes × (rotated 45 degrees)

### Key Concepts
- Accordion pattern (one open at a time)
- `.nextElementSibling` to get related element
- Toggle logic with state checking
- CSS transitions for smooth open/close
- `max-height` for animated expansion

### Why Close All First?
```javascript
// Close all
headers.forEach(h => h.classList.remove('active'))

// Then open clicked one
if (!wasActive) {
    header.classList.add('active')
}
```
Ensures only one item open at a time (accordion behavior)

### CSS Animation
```css
.accordion-content {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s;
}
.accordion-content.active {
    max-height: 200px;
}
```
Smooth slide down/up effect

### Alternative: Allow Multiple Open
Remove the "close all" logic to let multiple items stay open
