cd code/
chmod +x *.sh
./setup.sh
./hardware_info.sh
echo "Test Started "
 mkdir ../results/
#sleep 10
echo "Process-Name,Time-Taken,Avg-CPU-usage,Agv-Memory-usage,Avg-Swap-usage" >> ../results/Matrix.csv
mkdir ../results/Read_Write_stats/
sar -u 1 >> ../results/Read_Write_stats/cpu_data.csv |sar -r 1 >> ../results/Read_Write_stats/memory_data.csv | sar -S 1 >> ../results/Read_Write_stats/swap_data.csv | python Read-Write_test.py
echo " Read/Write Test Completed "
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Read_Write_stats/
cd ../results/Read_Write_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code/
sleep 5
mkdir ../results/copy_test_stats
sar -u 1 >> ../results/copy_test_stats/cpu_data.csv |sar -r 1 >> ../results/copy_test_stats/memory_data.csv | sar -S 1 >> ../results/copy_test_stats/swap_data.csv | python Copy_Data.py 
echo " Copy Test Completed"
rm -rf /var/Bench_Test_Images
#sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/copy_test_stats/
cd ../results/copy_test_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py
python processed-list.py
echo " Data Processed"
cd ../../code/
sleep 5
mkdir ../results/Compression_stats
sar -u 1 >> ../results/Compression_stats/cpu_data.csv |sar -r 1 >>../results/Compression_stats/memory_data.csv | sar -S 1 >>../results/Compression_stats/swap_data.csv | python Compression.py>> Data.txt
echo " Compresion Test  Completed"
rm -rf Bench_Test_Images/
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Compression_stats/
cd ../results/Compression_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code/
sleep 5
mkdir ../results/Extraction_stats/
sar -u 1 >> ../results/Extraction_stats/cpu_data.csv |sar -r 1 >> ../results/Extraction_stats/memory_data.csv | sar -S 1 >> ../results/Extraction_stats/swap_data.csv | python Extraction.py >> Data.txt
echo " Extraction Test Completed"
rm -rf Bench_image.tar.gx
rm -rf Extracted/
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Extraction_stats/
cd ../results/Extraction_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code/
sleep 5
mkdir ../results/Download_stats
sar -u 1 >> ../results/Download_stats/cpu_data.csv |sar -r 1 >> ../results/Download_stats/memory_data.csv | sar -S 1 >> ../results/Download_stats/swap_data.csv | python  Download_test.py >>Data.txt
echo " Download test completed"
sleep 5
mkdir ../results/Hashing_stats
sar -u 1 >> ../results/Hashing_stats/cpu_data.csv |sar -r 1 >>../results/Hashing_stats/memory_data.csv | sar -S 1 >> ../results/Hashing_stats/swap_data.csv | python Hashing.py >> Data.txt
echo " Hashing Completed"
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Hashing_stats/
cd ../results/Hashing_stats/
python cpu_data_report1.py
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
sleep 5
mkdir ../results/Encryption_stats
sar -u 1 >> ../results/Encryption_stats/cpu_data.csv |sar -r 1 >> ../results/Encryption_stats/memory_data.csv | sar -S 1 >> ../results/Encryption_stats/swap_data.csv | python AES_encryption.py>> Data.txt
echo " Encryption Completed"
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Encryption_stats/
cd ../results/Encryption_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
sleep 5
mkdir ../results/Decryption_stats
sar -u 1 >> ../results/Decryption_stats/cpu_data.csv |sar -r 1 >> ../results/Decryption_stats/memory_data.csv | sar -S 1 >> ../results/Decryption_stats/swap_data.csv | python AES_decryption.py>> Data.txt
echo " Decryption Completed"
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Decryption_stats/
cd ../results/Decryption_stats/
python cpu_data_report1.py 
python memory_data.py
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
sleep 5
rm -rf encrypted ubuntu.iso
mv Test_image.iso ../
sleep 5
mkdir ../results/Sorting_stats
sar -u 1 >> ../results/Sorting_stats/cpu_data.csv |sar -r 1 >> ../results/Sorting_stats/memory_data.csv | sar -S 1 >> ../results/Sorting_stats/swap_data.csv | python mergesort.py>> Data.txt
echo " Merge Sort Completed"
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Sorting_stats/
cd ../results/Sorting_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
sleep 5
mkdir ../results/Random_Algorithm_stats
sar -u 1 >> ../results/Random_Algorithm_stats/cpu_data.csv |sar -r 1 >> ../results/Random_Algorithm_stats/memory_data.csv | sar -S 1 >> ../results/Random_Algorithm_stats/swap_data.csv | python random_test.py >> Data.txt
echo " Random Algorithm test completed"
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Random_Algorithm_stats/
cd ../results/Random_Algorithm_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code/
sleep 5
mkdir ../results/Integer_Test_stats
sar -u 1 >> ../results/Integer_Test_stats/cpu_data.csv |sar -r 1 >> ../results/Integer_Test_stats/memory_data.csv | sar -S 1 >> ../results/Integer_Test_stats/swap_data.csv | python Integer_test.py >> Data.txt
echo "Integer Test Completed"
sleep 5
cp cpu_data_report1.py memory_data.py swap_data.py processed-list.py time.txt ../results/Integer_Test_stats/
cd ../results/Integer_Test_stats/
python cpu_data_report1.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
sleep 5
timeout 30 bash float_test.sh
sleep 5
python Group_Data.py
echo " All Test Completed Successfully"
echo " all data is in results folder"
