# Character Counter - Logic Explanation

## How It Works

### HTML Structure
- Textarea with maxlength attribute
- Counter display showing current/max characters

### JavaScript Logic

1. **Initialize**
   - Get textarea max length from HTML attribute
   - Display max length on page load

2. **Input Event**
   - Fires on every keystroke
   - Get current text length: `textarea.value.length`
   - Update counter display

3. **Max Length Enforcement**
   - HTML `maxlength` attribute prevents typing beyond limit
   - JavaScript just displays the count

### Key Concepts
- `.value.length` to count characters
- HTML attributes for constraints
- Real-time updates with input event
- Reading HTML attributes in JavaScript

### Why This is Useful
- Twitter: 280 character limit
- SMS: 160 character limit
- Form fields: various limits
- User feedback: know how much space left

### Simple but Important
This teaches:
- String length property
- Real-time UI updates
- Reading element attributes
- User experience design
