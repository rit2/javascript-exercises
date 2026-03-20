# Item Counter - Logic Explanation

## How It Works

### HTML Structure
- Counter display showing total items
- Form with input and button
- Empty list

### JavaScript Logic

1. **Add Item** (same as shopping list)
   - Create list item with text and delete button
   - Append to list

2. **Update Counter Function**
   - Count total children in list: `list.children.length`
   - Update counter display

3. **Call Counter Update**
   - After adding item → update counter
   - After deleting item → update counter

4. **Delete Item**
   - Remove item from list
   - Call update counter function

### Key Concepts
- Functions for reusable code
- `.children.length` to count elements
- Calling functions at right time
- Keeping UI in sync with data

### Why Separate Function?
Instead of duplicating counter logic:
- Write once, use multiple times
- Easier to maintain
- Single source of truth
- Follows DRY principle (Don't Repeat Yourself)
