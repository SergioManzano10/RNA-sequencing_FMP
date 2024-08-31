#!/bin/bash
#SBATCH -p long 
#SBATCH --job-name=ENSEMBL_rnasplice_noaggre_specificity_HBOC # Job name 
#SBATCH --mail-type=END,FAIL          # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=sergiomanzano@vhio.net
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=30G                     # Job memory request
#SBATCH --time=20-0
#SBATCH --cpus-per-task=1
#SBATCH --output=%x_%j.log   # Standard output and error log
#SBATCH --error=%x_%j.err

genome="/mnt/bioinfnas/general/refs/homo_sapiens/GRCh38/ensembl/release110/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa"
gtf="/mnt/bioinfnas/general/refs/homo_sapiens/GRCh38/ensembl/release110/Homo_sapiens.GRCh38.110.gtf"
genes="ENSG00000012048, ENSG00000171862, ENSG00000078804, ENSG00000076242, ENSG00000149311, ENSG00000116062, ENSG00000183765, ENSG00000185379, ENSG00000083093, ENSG00000108384, ENSG00000138376, ENSG00000039068, ENSG00000139618, ENSG00000136492, ENSG00000141510"

samples="sample_sheet_rnasplice_specificity.csv"
contrasts="Contrast_sheet_rnasplice_specificity.csv"

logdir="/mnt/bioinfnas/bioinformatics/projects/20240131_SGutierrez_germline_RNAseq/logFiles"
logfile="20240131_SGutierrez_germline_RNAseq"

outdir="/mnt/bioinfnas/bioinformatics/projects/20240131_SGutierrez_germline_RNAseq/results/results_$SLURM_JOB_NAME"

cmd="nextflow run nf-core/rnasplice --input $samples --contrasts $contrasts --outdir $outdir --fasta $genome --gtf $gtf --miso_genes ENSG00000185379.21 --edger_exon --aggregation false -profile singularity -r 1.0.1 -c nextflow.config -resume"

message=$(date +"%D %T")"        "$(whoami)"     "$SLURM_JOB_NAME"_"$SLURM_JOB_ID"       "$cmd

echo  $message >> $logdir$logfile
$cmd
final=$SLURM_JOB_NAME"_"$SLURM_JOB_ID" output:"
echo $final >> $logdir$logfile
tail -n 20 $SLURM_JOB_NAME"_"$SLURM_JOB_ID".log" >> $logdir$logfile
