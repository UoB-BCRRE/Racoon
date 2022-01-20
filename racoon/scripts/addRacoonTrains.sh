#!/bin/bash
echo "Racoon Creatation script"
echo "Loading started"
#This script just aims to set variables and call the other scripts that do the work
#If it's misbehaving do try running dos2unix over it - this script keeps moving operating systems!

export server=http://localhost:5820
export db=trains
export fullDB=$server/$db

echo "Loading Schema"
bash ./loadschematrains.sh
echo "Adding Prefixes"
bash ./addNamespaces.sh