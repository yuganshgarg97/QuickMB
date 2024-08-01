echo " All Test Completed Successfully"
echo " Finalizing the Process"
tar -cvf results.tar.gz results/
python python_rename.py
mv *.tar.gz ../../
cd ..
pkill sar
exit
exit
