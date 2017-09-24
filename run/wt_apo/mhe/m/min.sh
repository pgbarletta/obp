#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/wt_apo.prmtop"
inpcrd="wt_apo.rst7"
restrt="mwt_apo.rst7"
refc="wt_apo.rst7"
mdcrd="mwt_apo.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
