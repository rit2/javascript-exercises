# Tabs Component - Logic Explanation

## How It Works

### HTML Structure
- Tab buttons with `data-tab` attributes
- Content divs with matching IDs
- Only one tab/content active at a time

### JavaScript Logic

1. **Tab Click**
   - Get target content ID from `data-tab` attribute
   - Remove 'active' class from all tabs
   - Remove 'active' class from all content divs
   - Add 'active' class to clicked tab
   - Add 'active' class to matching content

2. **Data Attributes**
   - HTML: `<button data-tab="tab1">`
   - JavaScript: `button.dataset.tab` → "tab1"
   - Links button to content div

3. **Single Active State**
   - Only one tab highlighted at a time
   - Only one content visible at a time
   - Switching is instant

### Key Concepts
- Data attributes for linking elements
- `dataset` API for reading data attributes
- Removing all active states before adding new one
- CSS for show/hide with transitions

### Data Flow
```
Click Tab → Get data-tab value → 
Clear all active states → 
Set clicked tab active → 
Show matching content
```

### Why Data Attributes?
- Clean way to store custom data in HTML
- Accessible via `dataset` in JavaScript
- Better than using IDs or classes for data
- Standard HTML5 feature

### CSS Transition
```css
.content {
    display: none;
}
.content.active {
    display: block;
    animation: fadeIn 0.3s;
}
```
Smooth appearance when switching tabs
