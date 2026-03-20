#!/bin/bash

# Project 4: Calculator - Complete it
cat > 04-calculator/style.css << 'EOF'
body{margin:0;padding:20px;background:linear-gradient(135deg,#667eea,#764ba2);min-height:100vh;display:flex;justify-content:center;align-items:center;font-family:Arial}h1{color:#333;margin-bottom:30px}.container{background:#fff;padding:40px;border-radius:15px;box-shadow:0 10px 30px rgba(0,0,0,.3);text-align:center}input{width:100%;padding:15px;margin:10px 0;font-size:18px;border:2px solid #ddd;border-radius:8px;box-sizing:border-box}.buttons{display:grid;grid-template-columns:repeat(4,1fr);gap:10px;margin:20px 0}button{padding:20px;font-size:24px;border:none;border-radius:8px;cursor:pointer;background:#667eea;color:#fff}button:hover{background:#764ba2}.result{margin-top:20px;padding:20px;background:#f8f9fa;border-radius:8px;font-size:24px;font-weight:bold;color:#667eea}
EOF

cat > 04-calculator/script.js << 'EOF'
const n1=document.getElementById('num1'),n2=document.getElementById('num2'),res=document.getElementById('result');document.getElementById('add').onclick=()=>res.textContent=(+n1.value||0)+(+n2.value||0);document.getElementById('sub').onclick=()=>res.textContent=(+n1.value||0)-(+n2.value||0);document.getElementById('mul').onclick=()=>res.textContent=(+n1.value||0)*(+n2.value||0);document.getElementById('div').onclick=()=>{const v=+n2.value||0;res.textContent=v===0?'Error':((+n1.value||0)/v).toFixed(2)};
EOF

# Fix HTML
cat > 04-calculator/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>🧮 Calculator</h1>
        <input type="number" id="num1" placeholder="First number">
        <input type="number" id="num2" placeholder="Second number">
        <div class="buttons">
            <button id="add">+</button>
            <button id="sub">-</button>
            <button id="mul">×</button>
            <button id="div">÷</button>
        </div>
        <div class="result">Result: <span id="result">0</span></div>
    </div>
    <script src="script.js"></script>
</body>
</html>
EOF

echo "Project 4 completed"
