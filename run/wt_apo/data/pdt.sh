#! /bin/bash
#
#
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    k=`expr $i - 1`

    echo "Step:" $i

    mdin="pdt.in"
    prmtop="/home/german/obp/top_files/wt_apo.prmtop"

    if [ $i == 1 ]
    then

    	mdout=${i/*/"$i"pwt_apo.out}
	    inpcrd="31ewt_apo.rst7"
	    restrt=${i/*/"$i"pwt_apo.rst7}
	    mdcrd=${i/*/"$i"pwt_apo.nc}

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    mdout=${i/*/"$i"pwt_apo.out}
    inpcrd=${i/*/"$k"pwt_apo.rst7}
    restrt=${i/*/"$i"pwt_apo.rst7}
    mdcrd=${i/*/"$i"pwt_apo.nc}

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

    echo "Done step:" $i
done

exit 0
