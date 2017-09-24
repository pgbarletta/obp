#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/wt_ctv.prmtop"
inpcrd="wt_ctv.rst7"
restrt="mwt_ctv.rst7"
refc="wt_ctv.rst7"
mdcrd="mwt_ctv.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
