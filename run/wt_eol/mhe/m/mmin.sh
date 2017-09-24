#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/obp/top_files/wt_eol.prmtop"
inpcrd="mwt_eol.rst7"
restrt="mmwt_eol.rst7"
refc="wt_eol.rst7"
mdcrd="mmwt_eol.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
