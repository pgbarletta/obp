#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/mu_apo.prmtop"
inpcrd="mu_apo.rst7"
restrt="mmu_apo.rst7"
refc="mu_apo.rst7"
mdcrd="mmu_apo.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
