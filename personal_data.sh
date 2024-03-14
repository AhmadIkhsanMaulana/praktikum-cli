#!/bin/sh

echo "beginning tasks..."

mkdir about_me  favorites
cd about_me
touch about_me.txt
echo "Nama Lengkap: Ahmad Ikhsan Maulana" > about_me.txt
cd ..
cd favorites
touch foods.txt drinks.txt
echo "Makanan Favorit: Sate Ayam" > foods.txt
echo "Minuman Favorit: Milk Tea" > drinks.txt
cd ..
cat about_me/about_me.txt
cat favorites/foods.txt
cat favorites/drinks.txt

echo "done!"
