#! /bin/bash

export CUDA_VISIBLE_DEVICES="1"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/obp/top_files/wt_ctv.prmtop"
inpcrd="mmwt_ctv.rst7"
restrt="hwt_ctv.rst7"
refc="mmwt_ctv.rst7"
mdcrd="hwt_ctv.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
