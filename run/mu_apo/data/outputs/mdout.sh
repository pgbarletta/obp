#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pmu_apo.out 2pmu_apo.out 3pmu_apo.out 4pmu_apo.out 5pmu_apo.out 6pmu_apo.out 7pmu_apo.out 8pmu_apo.out 9pmu_apo.out 10pmu_apo.out 11pmu_apo.out 12pmu_apo.out 


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

