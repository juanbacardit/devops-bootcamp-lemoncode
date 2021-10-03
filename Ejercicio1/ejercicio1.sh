#!/bin/bash

#0. keep the root folder as reference
rootfolder=$(pwd)

#3. Read message from command line argument
file_content=${1}
if [ -z "$file_content" ]
then
    file_content="Que me gusta la bash!!!!"
fi

#1. Create the initial structure
mkdir $rootfolder/foo $rootfolder/foo/dummy $rootfolder/foo/empty
echo "$file_content" >> $rootfolder/foo/dummy/file1.txt
touch $rootfolder/foo/dummy/file2.txt

#2. Copy file content
cat $rootfolder/foo/dummy/file1.txt >> $rootfolder/foo/dummy/file2.txt
mv $rootfolder/foo/dummy/file2.txt $rootfolder/foo/empty/


#4. Get content from a website (ie:lemoncode.net)
echo "Add text to search into website: www.lemoncode.net"
read word
curl -o lemoncode.txt https://lemoncode.net | cat lemoncode.txt | grep -io -n $word