 **Silkworm mTOR Transcriptomics: Signaling Analysis in _B. mori_** : This repository documents a comprehensive bioinformatics workflow for analyzing transcriptomic shifts in the silkworm, _Bombyx mori_, specifically focusing on the PI3K/AKT/mTOR signaling axis as a nutrient gatekeeper during viral challenge.
 
 **Research Context**: The mTOR pathway is a central regulator of cellular metabolism and protein synthesis. In this project, we model how viral infection disrupts these signaling nodes to reprogram the host's metabolic landscape.
 
 **Phase 1:** Exploratory Data Analysis (Heatmaps)We began by visualizing global expression patterns across 100 genes to identify clusters of co-regulated signaling molecules.
 **Technique:** Hierarchical clustering and row-scaling.
 **Insight:** Identified distinct expression "blocks" where nutrient transporters were significantly suppressed.
 **File:** Silkworm_Signaling_Heatmap.png
 
 **Phase 2: Statistical Significance (Volcano Plots)** : Moving beyond patterns, we applied statistical thresholds to identify high-confidence regulators.
 **Thresholds:** $|Log2FC| > 1.0$ and $p < 0.05$.
 **Insight:** Successfully isolated 20+ "Hub" genes that are significantly up-regulated as part of the innate antiviral response. 
 **File**: B_mori_Volcano_Plot.png

**Phase 3:** Functional Enrichment (KEGG Analysis)We mapped our significant genes to biological pathways to understand the functional consequence of the infection.
**Tchnique:** Over-representation analysis of KEGG pathways.
**Insight:** mTOR Signaling and Autophagy showed the highest fold-enrichment, confirming their role as primary metabolic targets.
**File:** B_mori_Enrichment_Plot.png 

**Phase 4:** Systems Biology (PPI Networks)Finally, we modeled the physical and functional architecture of the signaling chain.Technique: Directed graph modeling using igraph.
**Insight:** Visualized the signal transduction flow from PI3K/AKT down to S6K and 4E-BP1, highlighting the "bottleneck" role of mTOR.
**File:** B_mori_PPI_Network.png 

**Tools & Technologies**
**Language**: R (v4.5.3)
**Libraries:** pheatmap, ggplot2, igraphData 
**Source:** Simulated transcriptomics (inspired by GSE147137)
