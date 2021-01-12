#!/bin/bash

echo which file to open
echo 1 - app.py 
echo 2 - type in the name of the app

read num

if [[ $num == "1" ]]; then
   cd app
   python3 app.py
else
   echo type in the name of the app 
   read name
   python3 $name
fi
