# Form Validation - Logic Explanation

## How It Works

### HTML Structure
- Form with name, email, password inputs
- Error message spans for each field
- Submit button
- Success message (hidden)

### JavaScript Logic

1. **Form Submit**
   - Prevent default submission
   - Clear previous errors
   - Set valid flag to true

2. **Validate Name**
   - Check if length >= 3 characters
   - If invalid → show error, mark field, set valid = false

3. **Validate Email**
   - Use regex pattern: `/\S+@\S+\.\S+/`
   - Checks for: text @ text . text
   - If invalid → show error, mark field, set valid = false

4. **Validate Password**
   - Check if length >= 6 characters
   - If invalid → show error, mark field, set valid = false

5. **Submit or Show Errors**
   - If all valid → show success message, reset form
   - If any invalid → errors already displayed

### Key Concepts
- Form validation
- Regular expressions (regex)
- Boolean flags
- Error messaging
- CSS classes for styling invalid fields
- `.test()` method for regex matching

### Email Regex Explained
```
\S+    = One or more non-space characters
@      = Literal @ symbol
\S+    = One or more non-space characters
\.     = Literal dot (escaped)
\S+    = One or more non-space characters
```
Matches: user@example.com, test@mail.co
