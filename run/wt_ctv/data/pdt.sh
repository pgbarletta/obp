#! /bin/bash
#
#
export CUDA_VISIBLE_DEVICES="1"

for i in `cat step.list`
do
    k=`expr $i - 1`

    echo "Step:" $i

    mdin="pdt.in"
    prmtop="/home/german/obp/top_files/wt_ctv.prmtop"

    if [ $i == 1 ]
    then

    	mdout=${i/*/"$i"pwt_ctv.out}
	    inpcrd="31ewt_ctv.rst7"
	    restrt=${i/*/"$i"pwt_ctv.rst7}
	    mdcrd=${i/*/"$i"pwt_ctv.nc}

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    mdout=${i/*/"$i"pwt_ctv.out}
    inpcrd=${i/*/"$k"pwt_ctv.rst7}
    restrt=${i/*/"$i"pwt_ctv.rst7}
    mdcrd=${i/*/"$i"pwt_ctv.nc}

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

    echo "Done step:" $i
done

exit 0
