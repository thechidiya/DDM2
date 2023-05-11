#!/bin/bash
  
#SBATCH --job-name="run_hyperparameter_search"
#SBATCH --partition=gpu,all
#SBATCH --time=96:00:00
#SBATCH --mem=32GB
#SBATCH --exclude=sensei1,lifnode1,asfalda1,see4c1,mundus-mir-2,mundus-mir-3,selexini-1,mundus-mir-1
#***************************
#DO NOT MODIFY THESE OPTIONS
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:1
#***************************
##### PLEASE UPDTAE CONFIGURE FILE BEFORE EXCUTING THIS SCRIPT #####
#python3 train_diff_model.py -p train -c config/hardi_150.json
python3 train_diff_model.py -p train -c config/hardi_150.json
##### PLEASE UPDTAE CONFIGURE FILE BEFORE EXCUTING THIS SCRIPT #####
