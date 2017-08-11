#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pmu_ctv.out 2pmu_ctv.out 3pmu_ctv.out 4pmu_ctv.out 5pmu_ctv.out 6pmu_ctv.out 7pmu_ctv.out 8pmu_ctv.out 9pmu_ctv.out 10pmu_ctv.out 11pmu_ctv.out 12pmu_ctv.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

