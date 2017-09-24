#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/obp/top_files/wt_eol.prmtop"
inpcrd="wt_eol.rst7"
restrt="mwt_eol.rst7"
refc="wt_eol.rst7"
mdcrd="mwt_eol.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
