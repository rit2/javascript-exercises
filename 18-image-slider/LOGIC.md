# Image Slider - Logic Explanation

## How It Works

### HTML Structure
- Slide container with multiple slides
- Previous and Next buttons
- Dot indicators

### JavaScript Logic

1. **Show Slide Function**
   - Remove 'active' class from all slides and dots
   - Calculate correct slide index (handles wraparound)
   - Add 'active' class to current slide and dot

2. **Previous Button**
   - Subtract 1 from current index
   - Call showSlide()
   - Wraparound: if at first slide, go to last

3. **Next Button**
   - Add 1 to current index
   - Call showSlide()
   - Wraparound: if at last slide, go to first

4. **Dot Navigation**
   - Click any dot to jump to that slide
   - Each dot has index
   - Call showSlide() with that index

5. **Wraparound Logic**
   - Use modulo: `(n + slides.length) % slides.length`
   - Handles negative numbers and overflow
   - Creates infinite loop effect

### Key Concepts
- Array-like navigation
- Modulo for circular logic
- Multiple event listeners
- Synchronized UI (slides + dots)
- CSS transitions for smooth animation

### Wraparound Math
```
slides.length = 4 (indices: 0, 1, 2, 3)

Current = 0, Previous clicked:
(0 - 1 + 4) % 4 = 3 % 4 = 3 ✓ (last slide)

Current = 3, Next clicked:
(3 + 1 + 4) % 4 = 8 % 4 = 0 ✓ (first slide)
```
