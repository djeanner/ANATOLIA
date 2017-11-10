#!/bin/tcsh
echo "move to local directory"
set base_path=`echo $0 |rev|cut -d/ -f2-|rev`
cd $base_path
echo "recompiles program"
cd ..
cd AN*/Sou*
g++ -std=c++11 anatolia.cpp -lgsl -lgslcblas -o ANATOLIA
echo "run example 1"
cd $base_path
cd ODCB
time ../../ANA*/Mac*/ANATOLIA
cd ..
echo "run example 1"

cd Styrene
time ../../ANA*/Mac*/ANATOLIA
cd ..
echo "Done!"
