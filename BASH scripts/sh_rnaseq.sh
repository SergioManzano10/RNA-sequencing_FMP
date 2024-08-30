#!/bin/bash
#SBATCH -p long # Partition to submit the job to
#SBATCH --job-name=rnaseqHBOC # Job name
#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=sergiomanzano@vhio.net
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=5G                     # Job memory request
#SBATCH --time=20-0
#SBATCH --cpus-per-task=1
#SBATCH --output=%x_%j.log   # Standard output and error log
#SBATCH --error=%x_%j.err

genome="GRCh38"
refdir="/mnt/bioinfnas/general/refs/igenomes"

samples="sample_sheet_rnaseq.csv"

logdir="/mnt/bioinfnas/bioinformatics/projects/20240131_SGutierrez_germline_RNAseq/logFiles"
logfile="20240131_SGutierrez_germline_RNAseq"

outdir="/mnt/bioinfnas/bioinformatics/projects/20240131_SGutierrez_germline_RNAseq/results/results_$SLURM_JOB_NAME"

cmd="nextflow run nf-core/rnaseq --input $samples --outdir $outdir --genome $genome --igenomes_base $refdir -profile singularity -r 3.12.0 -c n>

message=$(date +"%D %T")"        "$(whoami)"     "$SLURM_JOB_NAME"_"$SLURM_JOB_ID"       "$cmd

echo  $message >> $logdir$logfile
$cmd
final=$SLURM_JOB_NAME"_"$SLURM_JOB_ID" output:"
echo $final >> $logdir$logfile
tail -n 20 $SLURM_JOB_NAME"_"$SLURM_JOB_ID".log" >> $logdir$logfile