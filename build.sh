#!/bin/bash

# Step 1: Run node script.js
node script.js &

# Step 2: Start the database server
cd Database_API
uvicorn main:app --reload --host 0.0.0.0 &

# Step 3: Compile smart contracts with Truffle
cd ..
truffle console --eval "compile" &

# Step 4: Migrate the Truffle contract to the local blockchain
gnome-terminal -- truffle migrate
