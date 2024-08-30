# RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer.
This repository contains the code used to carry out the final master project titled: **RNA sequencing role in the genetic diagnosis of hereditary breast and ovarian cancer.**

## RNA-seq
The first step was to run the **RNA-seq pipeline** using Nextflow. To achieve this: 
* We created a nextflow.config file, located in the BASH scripts folder under the name *nextflow_rnaseq.config*. This file contains the Nextflow requirements for job distribution and resource allocation.
* We created a shell script con las especificaciones necesarias para hacer funcionar la pipeline de nf-core, located in the BASH scripts folder under the name *sh_rnaseq.sh*.
