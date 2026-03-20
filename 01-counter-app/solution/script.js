// Exercise 1: Counter App - SOLUTION
// Only look at this if you're stuck for 20+ minutes!

// Step 1: Get the elements
const counter = document.getElementById('counter');
const decreaseBtn = document.getElementById('decreaseBtn');
const resetBtn = document.getElementById('resetBtn');
const increaseBtn = document.getElementById('increaseBtn');

// Helper function to update color based on value
function updateColor() {
    const value = parseInt(counter.textContent);
    
    if (value > 0) {
        counter.style.color = '#2ecc71'; // Green
    } else if (value < 0) {
        counter.style.color = '#e74c3c'; // Red
    } else {
        counter.style.color = '#667eea'; // Default purple
    }
}

// Step 2: Decrease button
decreaseBtn.addEventListener('click', function() {
    let currentValue = parseInt(counter.textContent);
    currentValue = currentValue - 1;
    counter.textContent = currentValue;
    updateColor();
});

// Step 3: Increase button
increaseBtn.addEventListener('click', function() {
    let currentValue = parseInt(counter.textContent);
    currentValue = currentValue + 1;
    counter.textContent = currentValue;
    updateColor();
});

// Step 4: Reset button
resetBtn.addEventListener('click', function() {
    counter.textContent = 0;
    updateColor();
});
