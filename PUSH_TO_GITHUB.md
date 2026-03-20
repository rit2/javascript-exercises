# How to Push to GitHub

## Step 1: Create a new repository on GitHub
1. Go to https://github.com/new
2. Repository name: `javascript-exercises` or `20-javascript-projects`
3. Description: "20 JavaScript projects for beginners"
4. Keep it Public
5. DO NOT initialize with README (we already have one)
6. Click "Create repository"

## Step 2: Push your code
Run these commands in your terminal:

```bash
cd ~/javascript-exercises

# Add your GitHub repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/javascript-exercises.git

# Rename branch to main
git branch -M main

# Push to GitHub
git push -u origin main
```

## Step 3: Verify
Go to your GitHub repository URL and you should see all 20 projects!

---

## Your Repository Contains:
✅ 20 complete JavaScript projects
✅ Each with HTML, CSS, and JavaScript files
✅ Professional README.md
✅ .gitignore file
✅ All committed and ready to push

## Projects Included:
1. Counter App
2. Color Changer
3. Show/Hide Content
4. Calculator
5. Tip Calculator
6. Shopping List
7. Item Counter
8. Filter List
9. Quote Generator
10. Modal Popup
11. Form Validation
12. Password Strength
13. Character Counter
14. Quiz App
15. Survey Form
16. Countdown Timer
17. Stopwatch
18. Image Slider
19. Tabs Component
20. Accordion Menu
