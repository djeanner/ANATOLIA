Readme modified by Damien Jeannerat
Program for automated NMR spectra total lineshape analysis.
MRC...
Working with Bruker NMR format (dataset) only.
Can be run in standalone mode or via AU programm
'anatolia' from Bruker TopSpin.

When using with TopSpin it should be located
in TopSpinHome/prog/anatolia directory.

All source code are currently located in a single c++
file 'anatolia.cpp'.
For matrix diagonalization and multidimentional
function minimization it utilizes procedures from
GNU scientific library (https://www.gnu.org/software/gsl/).

Versions for ALL platforms compiled and linked 
in 'static' mode, so they are a distributed as
single executable files.

For use with topspin, see the SourceCode/TopspinAU

To run test examples, on a mac, type:
cd Examples/ODCB
../../ANATOLIA_V1.0/MacOsX_x64/ANATOLIA
cd ../..
cd Examples/OBCD
../../ANATOLIA_V1.0/MacOsX_x64/ANATOLIA
cd ../..

To recompile from source file: 
cd ANATOLIA_V1.0/SourceCode
g++ -std=c++11 anatolia.cpp -lgsl -lgslcblas -o ANATOLIA

For use with topspin:
First create the host folder:
mkdir -p /opt/topspin3.2/prog/anatolia/
copy the compile binary to your topspin directory (depend on the version). typically in:
/opt/topspin3.2/prog/anatolia/ANATOLIA
Open topspin
Have an active spectrum on the screen
Type “edau anatolia”
Copy/paste the content of the file /ANATOLIA_V1.0/TopSpinAU/anatolia in the editor window.
Click compile.
Make sure a Input_Data.txt file is located in the /pdata/ folder and click “Execute”.