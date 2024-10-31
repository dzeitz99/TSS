#! bin/bash

root=$(pwd)
for dir in case*
do
	cd $dir
	echo "#! /bin/bash" > mcnp_submit.slurm
	echo "#SBATCH --job-name=$dir"  >> mcnp_submit.slurm
	echo "#SBATCH --partition=week" >> mcnp_submit.slurm
	echo "#SBATCH --nodes=6" >> mcnp_submit.slurm
	echo "#SBATCH --ntasks-per-node=24" >> mcnp_submit.slurm
	if [[ "$dir" == case80* ]]; then
       	    echo "#SBATCH --mail-type=BEGIN" >> mcnp_submit.slurm
            echo "#SBATCH --mail-user=daniel.zeitz@psi.ch" >> mcnp_submit.slurm
       	fi
	echo "
	module load intel/20.4
	module load openmpi/4.0.5_slurm
	export DATAPATH=/mnt/nfs/home/rizzi_n/NUCLEAR_DATA/MCNP6_DATA/
		/opt/psi/Compiler/openmpi/4.0.5_slurm/intel/20.4/bin/mpirun -np 144 --use-hwthread-cpus --oversubscribe /mnt/nfs/home/zeitz_d/mcnp6.3/mcnp-6.3.0-Linux-OpenMPI/bin/mcnp6.ompi
	" >> mcnp_submit.slurm
		sbatch mcnp_submit.slurm
		echo "submitted $sphere $dir"
	cd $root
done
