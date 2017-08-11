#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pwt_apo.out 2pwt_apo.out 3pwt_apo.out 4pwt_apo.out 5pwt_apo.out 6pwt_apo.out 7pwt_apo.out 8pwt_apo.out 9pwt_apo.out 10pwt_apo.out 11pwt_apo.out 12pwt_apo.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

