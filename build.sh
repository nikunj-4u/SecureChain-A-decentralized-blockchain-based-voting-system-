#!/bin/bash

# Step 1: Install uvicorn
pip install uvicorn

# Step 2: Install truffle
npm install -g truffle

# Step 3: Run node script.js
node script.js &

# Step 4: Start the database server
cd Database_API
uvicorn main:app --reload --host 0.0.0.0 &

# Step 5: Compile smart contracts with Truffle
cd ..
truffle console --eval "compile" &
