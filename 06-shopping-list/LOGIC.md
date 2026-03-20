# Shopping List - Logic Explanation

## How It Works

### HTML Structure
- Form with text input
- Submit button
- Empty unordered list (ul)

### JavaScript Logic

1. **Form Submission**
   - Prevent default form behavior with `e.preventDefault()`
   - Get input value and trim whitespace
   - Check if empty → show alert

2. **Create List Item**
   - Create `<li>` element
   - Create `<span>` for item text
   - Create delete button

3. **Delete Functionality**
   - Add click event to delete button
   - Use `li.remove()` to delete entire item

4. **Add to List**
   - Append span and button to li
   - Append li to list
   - Clear input field

### Key Concepts
- Form handling
- `preventDefault()` to stop page reload
- Creating elements dynamically
- `createElement()` and `appendChild()`
- Event delegation
- `.trim()` to remove extra spaces

### Why preventDefault?
Forms normally reload the page on submit. We prevent this to:
- Keep the page interactive
- Maintain the list without refresh
- Handle submission with JavaScript
