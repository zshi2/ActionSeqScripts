#!/bin/csh

#$ -M netid@myu.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-24 24	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N job_name	         # Specify job name

module load xyz	         # Required modules

mpirun -np $NSLOTS ./app # Application to execute
