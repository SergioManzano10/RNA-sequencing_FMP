# RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer.
This repository contains the code used to carry out the final master project titled: **RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer.**

## RNA-seq
The first step was to run the **RNA-seq pipeline** using Nextflow. To achieve this: 

* We created a nextflow.config file, located in the BASH scripts folder under the name *nextflow_rnaseq.config*. This file contains the Nextflow requirements for job distribution and resource allocation.
  
* We created a shell script with the necessary specifications to run the nf-core pipeline, located in the BASH scripts folder under the name *sh_rnaseq.sh*.

The second step was to examine the outputs/results obtained by the pipeline. To achieve this: 

* First, we performed a differential expression analysis (DEA). The code is located in the R scripts folder under the name *XXX.*



## RNA-splice
The first step was to run the **RNA-splice pipeline** using Nextflow. To achieve this: 

* We created a nextflow.config file, located in the BASH scripts folder under the name *nextflow_rnasplice.config*. This file contains the Nextflow requirements for job distribution and resource allocation.
  
* We created a shell script with the necessary specifications to run the nf-core pipeline, located in the BASH scripts folder under the name *sh_rnasplice.sh*.

The second step was to examine the outputs/results obtained by the pipeline. To achieve this: 


