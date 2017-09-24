#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/wt_apo.prmtop"
inpcrd="mwt_apo.rst7"
restrt="mmwt_apo.rst7"
refc="wt_apo.rst7"
mdcrd="mmwt_apo.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
