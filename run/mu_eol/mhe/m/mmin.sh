#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/mu_eol.prmtop"
inpcrd="mmu_eol.rst7"
restrt="mmmu_eol.rst7"
refc="mu_eol.rst7"
mdcrd="mmmu_eol.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
