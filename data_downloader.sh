#!/bin/bash
sudo apt install unzip &> /dev/null
dsname=$1
mkdir -p ~/.kaggle
cd ~
mkdir -p $dsname 
cd $dsname
mkdir -p data
cd data
kaggle competitions download -c $dsname
unzip -q $dsname.zip
