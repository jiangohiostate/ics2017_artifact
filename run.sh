#!/bin/bash

cd datasets
echo "Generating Inputs ... "
for i in 6 7 8 9 10 11 12 13 14 15 16 17 18 19; do
python ./gen_hitter.py $i > hitter_$i.txt
python ./gen_zipf.py $i > zipf_$i.txt
python ./gen_mcluster.py $i > mcluster_$i.txt
done
cd ..
echo "Input files generated. "

cd query


if [ -f results.txt ]; then
rm results.txt
fi

echo "================  hitter ===================" >> results.txt
./run_serial.sh ../datasets/hitter
./run_linear.sh ../datasets/hitter
./run_bucket.sh ../datasets/hitter
echo "===========================================" >> results.txt
echo "================  zipf ===================" >> results.txt
./run_serial.sh ../datasets/zipf
./run_linear.sh ../datasets/zipf
./run_bucket.sh ../datasets/zipf
echo "===========================================" >> results.txt
echo "================  mcluster ===================" >> results.txt
./run_serial.sh ../datasets/mcluster
./run_linear.sh ../datasets/mcluster
./run_bucket.sh ../datasets/mcluster
echo "===========================================" >> results.txt
mv results.txt ../
cd ../
