# RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer.
This repository contains the code used to carry out the final master project titled: **RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer**

Here is the workflow followed in the project:
![WorkFlow](IMAGES/WF.png)

## Quality control (QC)
Comparison of TPM values between our study and those obtained from GTEx. The code is located in the R folder under the name ![Correlation_test.Rmd](R/Correlation_test.Rmd).

## RNA-seq
The first step was to run the **RNA-seq pipeline** using Nextflow. To achieve this: 

* We created a nextflow.config file, located in the BASH folder under the name ![nextflow_rnaseq.config](BASH/nextflow_rnaseq.config). This file contains the Nextflow requirements for job distribution and resource allocation.
  
* We created a shell script with the necessary specifications to run the nf-core pipeline, located in the BASH folder under the name ![sh_rnaseq.sh](BASH/sh_rnaseq.sh).

The second step was to examine the outputs/results obtained by the pipeline. To achieve this: 

* First, we performed a differential expression analysis (DEA). The code is located in the R folder under the name ![RNA-seq.Rmd](R/RNA-seq.Rmd).
  
* Second, we performed an analysis to find aberrantly expressed genes in RNA-seq samples. The code is located in the R folder under the name ![OUTRIDER.Rmd](R/OUTRIDER.Rmd).


## RNA-splice
The first step was to run the **RNA-splice pipeline** using Nextflow. To achieve this: 

* We created a nextflow.config file, located in the BASH folder under the name ![nextflow_rnasplice.config](BASH/nextflow_rnasplice.config). This file contains the Nextflow requirements for job distribution and resource allocation.
  
* We created a shell script with the necessary specifications to run the nf-core pipeline, located in the BASH folder under the name ![sh_rnasplice.sh](BASH/sh_rnasplice.sh).

The second step was to examine the outputs/results obtained by the pipeline. To achieve this: 

* First, we performed a differential exon usage analysis (DEU). The code is located in the R folder under the name ![DEU_noaggregation_specificity.Rmd](R/DEU_noaggregation_specificity.Rmd).
  
* Second, we processed the .dpsi objects obtained from the SUPPA analysis, which was automatically performed by the pipeline. The code is located in the R folder under the name ![Table_of_LocalEvents.Rmd](R/Table_of_LocalEvents.Rmd).

* Third, we performed an analysis for the detection of aberrant gene expression events in RNA-seq data. The code is located in the R folder under the name ![FRASER.Rmd](R/FRASER.Rmd).



