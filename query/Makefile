all:  bucket_mask linear_serial linear_mask 

linear_serial: linear_serial.cpp
	icc -D$(SIZE) -O3 -xMIC-AVX512 -no-vec linear_serial.cpp -o linear_serial

linear_mask: linear_mask.cpp
	icc -D$(SIZE) -O3 -xMIC-AVX512 linear_mask.cpp -o linear_mask

bucket_mask: bucket_mask.cpp
	icc -D$(SIZE) -O3 -xMIC-AVX512 bucket_mask.cpp -o bucket_mask

clean:
	rm  bucket_mask linear_serial linear_mask

