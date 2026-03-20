#!/bin/bash

# Project 5: Tip Calculator
mkdir -p 05-tip-calculator
cat > 05-tip-calculator/index.html << 'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Tip Calculator</title><link rel="stylesheet" href="style.css"></head><body><div class="container"><h1>💰 Tip Calculator</h1><label>Bill ($)</label><input type="number" id="bill" placeholder="0.00"><label>Tip (%)</label><input type="number" id="tip" value="15"><label>People</label><input type="number" id="people" value="1" min="1"><button id="calc">Calculate</button><div class="results"><div>Tip: <span id="tipAmt">$0.00</span></div><div>Total: <span id="total">$0.00</span></div><div>Per Person: <span id="perPerson">$0.00</span></div></div></div><script src="script.js"></script></body></html>
EOF

cat > 05-tip-calculator/style.css << 'EOF'
body{margin:0;padding:20px;background:linear-gradient(135deg,#11998e,#38ef7d);min-height:100vh;display:flex;justify-content:center;align-items:center;font-family:Arial}.container{background:#fff;padding:40px;border-radius:15px;box-shadow:0 10px 30px rgba(0,0,0,.3);max-width:400px}h1{text-align:center;margin:0 0 30px}label{display:block;margin:15px 0 5px;font-weight:bold}input{width:100%;padding:12px;font-size:16px;border:2px solid #ddd;border-radius:8px;box-sizing:border-box}button{width:100%;padding:15px;margin:20px 0;font-size:18px;background:#11998e;color:#fff;border:none;border-radius:8px;cursor:pointer}button:hover{background:#0e8074}.results{background:#f8f9fa;padding:20px;border-radius:8px}.results div{display:flex;justify-content:space-between;padding:10px 0;border-bottom:1px solid #ddd}.results div:last-child{border:none;font-weight:bold;font-size:18px;color:#11998e}
EOF

cat > 05-tip-calculator/script.js << 'EOF'
const bill=document.getElementById('bill'),tip=document.getElementById('tip'),people=document.getElementById('people'),calc=document.getElementById('calc'),tipAmt=document.getElementById('tipAmt'),total=document.getElementById('total'),perPerson=document.getElementById('perPerson');calc.onclick=()=>{const b=+bill.value||0,t=+tip.value||0,p=+people.value||1,tipVal=(b*t)/100,totalVal=b+tipVal;tipAmt.textContent='$'+tipVal.toFixed(2);total.textContent='$'+totalVal.toFixed(2);perPerson.textContent='$'+(totalVal/p).toFixed(2)};
EOF

echo "Project 5 done"

# Project 6: Shopping List
mkdir -p 06-shopping-list
cat > 06-shopping-list/index.html << 'EOF'
<!DOCTYPE html><html><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Shopping List</title><link rel="stylesheet" href="style.css"></head><body><div class="container"><h1>🛒 Shopping List</h1><form id="form"><input type="text" id="input" placeholder="Add item..."><button type="submit">Add</button></form><ul id="list"></ul></div><script src="script.js"></script></body></html>
EOF

cat > 06-shopping-list/style.css << 'EOF'
body{margin:0;padding:20px;background:linear-gradient(135deg,#f093fb,#f5576c);min-height:100vh;font-family:Arial}.container{max-width:500px;margin:50px auto;background:#fff;padding:30px;border-radius:15px;box-shadow:0 10px 30px rgba(0,0,0,.3)}h1{text-align:center;margin:0 0 30px}form{display:flex;gap:10px;margin-bottom:20px}input{flex:1;padding:12px;font-size:16px;border:2px solid #ddd;border-radius:8px}button{padding:12px 24px;background:#f5576c;color:#fff;border:none;border-radius:8px;cursor:pointer;font-weight:bold}button:hover{background:#e04758}ul{list-style:none;padding:0}li{display:flex;justify-content:space-between;align-items:center;padding:15px;margin-bottom:10px;background:#f8f9fa;border-radius:8px;border-left:4px solid #f5576c}.delete{background:#e74c3c;padding:8px 16px;font-size:14px}
EOF

cat > 06-shopping-list/script.js << 'EOF'
const form=document.getElementById('form'),input=document.getElementById('input'),list=document.getElementById('list');form.onsubmit=e=>{e.preventDefault();const text=input.value.trim();if(!text)return alert('Enter an item!');const li=document.createElement('li'),span=document.createElement('span'),btn=document.createElement('button');span.textContent=text;btn.textContent='Delete';btn.className='delete';btn.onclick=()=>li.remove();li.append(span,btn);list.appendChild(li);input.value=''};
EOF

echo "Project 6 done"

