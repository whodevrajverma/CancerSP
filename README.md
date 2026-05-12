# CancerSP: Cancer Stage Progression

**CancerSP** is a web-based platform developed for the analysis of high-throughput genomics data and the prediction of cancer stages.
The platform utilizes machine learning models trained on **TCGA Level 3 genomics data** to distinguish between **Early** and **Late** stages across six different types of cancer.

**Web Server:** https://webs.iiitd.edu.in/raghava/cancersp/

Dataset of this tool is available on release section on the github.

This dataset can also be found on Zenodo at https://doi.org/10.5281/zenodo.20092451


## About the Platform

Accurately predicting the stage of cancer is essential for understanding the mechanisms behind metastasis and for selecting appropriate therapeutic strategies.
CancerSP focuses on classifying the pathological stage of cancer patients by analyzing gene expression levels (RSEM values).

* **Data Source:** Models were trained on genomic profiles of cancer patients from six cancer types available in The Cancer Genome Atlas (TCGA).
* **Methodology:** The platform primarily employs **Random Forest** algorithms to classify patients into early or late stages.
* **Feature Reduction:** The system successfully reduced the feature space from approximately 17,000 genes to a signature of **less than 100 genes** that effectively delineate cancer stages.


## Key Features

### 1. Genomics-Based Prediction

This module allows users to predict the cancer status (Early vs. Late) of a patient based on their genomic expression profile.

* **Input Requirement:** Users provide the **RSEM values** of specific signature genes.
* **Gene Identification:** Data entry requires the **HGNC gene symbol** along with its respective expression value.
* **Output:** The model classifies the provided sample into either an Early or Late stage.

### 2. Multi-Cancer Classification

CancerSP is designed to handle multiple cancer types, offering specialized predictive models for each of the six TCGA cancer types included in the study.

### 3. High-Throughput Data Analysis

The platform serves as a tool for mining high-throughput data to identify the most significant genetic markers responsible for disease progression.
By focusing on a small subset of genes, researchers can better understand the molecular drivers of metastasis in various cancers.


## Applications

* **Clinical Research:** Assisting in the classification of cancer stages to better understand patient prognosis.
* **Biomarker Discovery:** Identifying and validating a minimal set of genes that serve as high-precision indicators of cancer progression.
* **Metastasis Studies:** Using reduced feature sets to explore the biological mechanisms that cause a cancer to move from early to late stages.


## Contact & Authors

**Prof. Gajendra P. S. Raghava** (Corresponding Author)

raghava@iiitd.ac.in

Department of Computational Biology, Indraprastha Institute of Information Technology (IIIT Delhi), New Delhi, India.


## Support

CancerSP was developed with infrastructure and facility support from **IIIT-Delhi**.
