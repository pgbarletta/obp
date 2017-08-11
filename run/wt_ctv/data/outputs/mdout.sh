#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pwt_ctv.out 2pwt_ctv.out 3pwt_ctv.out 4pwt_ctv.out 5pwt_ctv.out 6pwt_ctv.out 7pwt_ctv.out 8pwt_ctv.out 9pwt_ctv.out 10pwt_ctv.out 11pwt_ctv.out 12pwt_ctv.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

