#!/bin/bash
sudo apt install unzip &> /dev/null
echo $1
key=$1
dsname=$2
mkdir -p ~/.kaggle
echo "{\"username\":\"arminhejazian\",\"key\":\"$key\"}"  > ~/.kaggle/kaggle.json
cd ~
mkdir -p $dsname 
cd $dsname
mkdir -p data
cd data
kaggle competitions download -c $dsname
unzip -q $dsname.zip
