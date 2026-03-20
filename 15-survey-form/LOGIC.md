# Survey Form - Logic Explanation

## How It Works

### HTML Structure
- Progress bar
- Three form steps (only one visible at a time)
- Previous/Next buttons
- Submit button on last step

### JavaScript Logic

1. **Step Management**
   - Track current step (1, 2, or 3)
   - Only show active step
   - Hide others

2. **Progress Bar**
   - Calculate: `(currentStep / totalSteps) × 100`
   - Update width percentage
   - Visual feedback of progress

3. **Next Button**
   - Hide current step
   - Increment step number
   - Show next step
   - Update progress bar

4. **Previous Button**
   - Hide current step
   - Decrement step number
   - Show previous step
   - Update progress bar

5. **Submit**
   - Collect all form data
   - Hide form
   - Show success message

### Key Concepts
- Multi-step forms
- State management (current step)
- CSS class toggling for visibility
- Progress calculation
- Form data collection

### Step Flow
```
Step 1 (33%) → Next → Step 2 (66%) → Next → 
Step 3 (100%) → Submit → Success
```

### Why Multi-Step?
- Less overwhelming for users
- Better mobile experience
- Higher completion rates
- Organized data collection
