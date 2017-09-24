#! /bin/bash
#
# Perform 29 steps of equilibration until all restraints have been taken out.
# Then, run ~1.96 ns until 5ns have passed since the start of the minimization.
#
export CUDA_VISIBLE_DEVICES="1"
i=0
starting_mdin="0equ.in"
for step in `cat step.list`
do
    
    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

    if [ $i == 1 ]
    then

		mdin=${i/*/"$i"equ.in}		
    	mdout=${i/*/"$i"equ.out}
	    prmtop="/home/german/obp/top_files/wt_eol.prmtop"
	    inpcrd=${i/*/hwt_eol.rst7}
	    restrt=${i/*/"$i"ewt_eol.rst7}
    	refc=${i/*/hwt_eol.rst7}
	    mdcrd=${i/*/"$i"ewt_eol.nc}

		# In this 1st step mdin = starting_mdin
	    sed "s/50\.0/${step}/" $starting_mdin > $mdin

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    if [[ $i == 30 || $i == 31 ]]
    then

        mdin=${i/*/"$i"equ.in}
        mdout=${i/*/"$i"equ.out}
        prmtop="/home/german/obp/top_files/wt_eol.prmtop"
        inpcrd=${i/*/"$k"ewt_eol.rst7}
        restrt=${i/*/"$i"ewt_eol.rst7}
        refc=${i/*/"$k"ewt_eol.rst7}
        mdcrd=${i/*/"$i"ewt_eol.nc}

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done single step:" $i

		continue	
    fi


    mdin=${i/*/"$i"equ.in}
    mdout=${i/*/"$i"equ.out}
    prmtop="/home/german/obp/top_files/wt_eol.prmtop"
    inpcrd=${i/*/"$k"ewt_eol.rst7}
    restrt=${i/*/"$i"ewt_eol.rst7}
    refc=${i/*/"$k"ewt_eol.rst7}
    mdcrd=${i/*/"$i"ewt_eol.nc}

    sed "s/50\.0/${step}/" $starting_mdin > $mdin

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

    echo "Done step:" $i
done

exit 0
