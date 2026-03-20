# Show/Hide Content - Logic Explanation

## How It Works

### HTML Structure
- Button (initially says "Hide")
- Content div with text

### CSS
- `.hidden` class with `display: none`

### JavaScript Logic

1. **Toggle Visibility**
   - Use `classList.toggle('hidden')` on content
   - Adds class if not present, removes if present

2. **Update Button Text**
   - Check if content has 'hidden' class
   - If hidden → button says "Show"
   - If visible → button says "Hide"

3. **Single Click Handler**
   - One event listener handles both show and hide
   - Uses conditional logic to determine state

### Key Concepts
- CSS class manipulation
- `classList.toggle()` method
- `classList.contains()` for checking
- Conditional logic
- Single responsibility (one function does both actions)

### Why Toggle is Better
Instead of separate show/hide functions, toggle:
- Less code
- Automatic state management
- No need to track current state manually
