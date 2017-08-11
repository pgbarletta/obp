#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pwt_eol.out 2pwt_eol.out 3pwt_eol.out 4pwt_eol.out 5pwt_eol.out 6pwt_eol.out 7pwt_eol.out 8pwt_eol.out 9pwt_eol.out 10pwt_eol.out 11pwt_eol.out 12pwt_eol.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

