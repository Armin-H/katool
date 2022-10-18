#!/bin/bash
sudo apt install unzip &> /dev/null
read -p "enter kaggle api-key:"		key
read -p "enter dataset's name:"		dsname 
mkdir -p ~/.kaggle
echo "{\"username\":\"arminhejazian\",\"key\":\"$key\"}"  > ~/.kaggle/kaggle.json
cd ~
mkdir -p $dsname 
cd $dsname
mkdir -p data
cd data
kaggle competitions download -c $dsname
unzip -q $dsname.zip
