#!/bin/bash

make clean
make SIZE=SMALL
printf "bucket\t" >> results.txt
for i in 6 7 8 9 10; do
echo $i
  ./bucket_mask $1\_$i.txt
done

make clean
make SIZE=MEDIUM
for i in 11 12 13 14 15; do
echo $i
  ./bucket_mask $1\_$i.txt
done

make clean
make SIZE=LARGE
for i in 16 17 18 19; do
echo $i
  ./bucket_mask $1\_$i.txt
done
printf "\n" >> results.txt
