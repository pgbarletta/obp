#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/mu_eol.prmtop"
inpcrd="mu_eol.rst7"
restrt="mmu_eol.rst7"
refc="mu_eol.rst7"
mdcrd="mmu_eol.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
