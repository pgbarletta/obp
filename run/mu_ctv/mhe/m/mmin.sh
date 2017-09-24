#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/mu_ctv.prmtop"
inpcrd="mmu_ctv.rst7"
restrt="mmmu_ctv.rst7"
refc="mu_ctv.rst7"
mdcrd="mmmu_ctv.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
