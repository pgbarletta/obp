#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pmu_eol.out 2pmu_eol.out 3pmu_eol.out 4pmu_eol.out 5pmu_eol.out 6pmu_eol.out 7pmu_eol.out 8pmu_eol.out 9pmu_eol.out 10pmu_eol.out 11pmu_eol.out 12pmu_eol.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

