**Project Context: mTOR & Antiviral Defense** 
This project explores the transcriptomic landscape of _Bombyx mori_ (Silkworm) during viral challenge. Specifically, it models the expression patterns of the **PI3K/AKT/mTOR signaling axis**, which serves as a critical nutrient gatekeeper and regulator of host antiviral defense mechanisms.

**Technical Workflow**
The analysis was performed in **R** using a robust bioinformatics pipeline:
**Data Acquisition:** Utilized GEOquery to interface with the NCBI Gene Expression Omnibus (Dataset: GSE147137).
**Preprocessing:** Conducted data normalization and handled missing values to ensure matrix integrity.
**Feature Selection:** Filtered for the top 50 genes exhibiting the highest variance across samples to identify key signaling mediators.
**Clustering:** Applied bidirectional hierarchical clustering to group genes with similar expression profiles.

**Results & Visualization**
The generated heatmap reveals two primary clusters:
**Inducted Signaling Cluster (Red):** Genes likely associated with the activation of the innate immune response and antiviral effectors.
**Suppressed Metabolic Cluster (Blue):** Genes reflecting the downregulation of standard metabolic processes as cellular resources are diverted to defense.

**Repository Structure**
**analysis_script.R:** The complete R source code for data modeling and plot generation.
**Silkworm_Signaling_Heatmap.png:** Publication-quality visualization of the results.
**.gitignore:** Configured for R to ensure a clean repository environment.
