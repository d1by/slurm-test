#!/bin/bash

#SBATCH --job-name=job_%j
#SBATCH --output=job_%j.out
#SBATCH --error=job_%j.err
#SBATCH --partition=test
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:10:00


echo Running gradient descent... 
python3 grad_desc.py

echo Running ascii generator...
python3 asciigenerator.py --file sadlinus.jpg

