#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/obp/top_files/mu_eol.prmtop"
inpcrd="mmmu_eol.rst7"
restrt="hmu_eol.rst7"
refc="mmmu_eol.rst7"
mdcrd="hmu_eol.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
