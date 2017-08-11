#! /bin/bash
#
#
export CUDA_VISIBLE_DEVICES="1"

for i in `cat step.list`
do
    k=`expr $i - 1`

    echo "Step:" $i

    mdin="pdt.in"
    prmtop="/home/german/obp/top_files/mu_apo.prmtop"

    if [ $i == 1 ]
    then

    	mdout=${i/*/"$i"pmu_apo.out}
	    inpcrd="31emu_apo.rst7"
	    restrt=${i/*/"$i"pmu_apo.rst7}
	    mdcrd=${i/*/"$i"pmu_apo.nc}

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    mdout=${i/*/"$i"pmu_apo.out}
    inpcrd=${i/*/"$k"pmu_apo.rst7}
    restrt=${i/*/"$i"pmu_apo.rst7}
    mdcrd=${i/*/"$i"pmu_apo.nc}

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

    echo "Done step:" $i
done

exit 0
