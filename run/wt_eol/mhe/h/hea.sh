#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/obp/top_files/wt_eol.prmtop"
inpcrd="mmwt_eol.rst7"
restrt="hwt_eol.rst7"
refc="mmwt_eol.rst7"
mdcrd="hwt_eol.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
