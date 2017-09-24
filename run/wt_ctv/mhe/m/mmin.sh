#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/wt_ctv.prmtop"
inpcrd="mwt_ctv.rst7"
restrt="mmwt_ctv.rst7"
refc="wt_ctv.rst7"
mdcrd="mmwt_ctv.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
