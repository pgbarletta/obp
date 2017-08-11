#! /bin/bash
#
#
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    k=`expr $i - 1`

    echo "Step:" $i

    mdin="pdt.in"
    prmtop="/home/german/obp/top_files/wt_eol.prmtop"

    if [ $i == 1 ]
    then

    	mdout=${i/*/"$i"pwt_eol.out}
	    inpcrd="31ewt_eol.rst7"
	    restrt=${i/*/"$i"pwt_eol.rst7}
	    mdcrd=${i/*/"$i"pwt_eol.nc}

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    mdout=${i/*/"$i"pwt_eol.out}
    inpcrd=${i/*/"$k"pwt_eol.rst7}
    restrt=${i/*/"$i"pwt_eol.rst7}
    mdcrd=${i/*/"$i"pwt_eol.nc}

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

    echo "Done step:" $i
done

exit 0
