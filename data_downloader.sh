#!/bin/bash
sudo apt install unzip &> /dev/null
echo $1
cd ~
mkdir $1
cd $1
mkdir data
cd data
kaggle competitions download -c $1
unzip -q $1.zip
