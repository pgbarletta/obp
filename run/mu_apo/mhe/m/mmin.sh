#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/mu_apo.prmtop"
inpcrd="mmu_apo.rst7"
restrt="mmmu_apo.rst7"
refc="mu_apo.rst7"
mdcrd="mmmu_apo.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
