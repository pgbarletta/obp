#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/obp/top_files/wt_apo.prmtop"
inpcrd="mmwt_apo.rst7"
restrt="hwt_apo.rst7"
refc="mmwt_apo.rst7"
mdcrd="hwt_apo.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
