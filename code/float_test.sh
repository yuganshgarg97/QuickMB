mkdir ../results/Float_Test_stats
sar -u 1 >> ../results/Float_Test_stats/cpu_data.csv |sar -r 1 >>../results/Float_Test_stats/memory_data.csv | sar -S 1 >> ../results/Float_Test_stats/swap_data.csv | python Float_test.py >> Data.docx
echo " Float Test Completed"
sleep 10
cp cpu_data_report.py memory_data.py swap_data.py processed-list.py time.txt ../results/Float_Test_stats/
cd ../results/Float_Test_stats/
python cpu_data_report.py 
python memory_data.py 
python swap_data.py 
python processed-list.py
echo " Data Processed"
cd ../../code
