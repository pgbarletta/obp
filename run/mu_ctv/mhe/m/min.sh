#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/mu_ctv.prmtop"
inpcrd="mu_ctv.rst7"
restrt="mmu_ctv.rst7"
refc="mu_ctv.rst7"
mdcrd="mmu_ctv.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
