# 1. Prepare Data
pathways <- c("mTOR Signaling", "Autophagy", "Ribosome Biogenesis", 
              "JAK-STAT Pathway", "Fatty Acid Metabolism")
p_values <- c(0.0001, 0.002, 0.01, 0.04, 0.45)
fold_enrichment <- c(8.5, 5.2, 4.1, 2.8, 1.2)
enrich_data <- data.frame(pathways, p_values, fold_enrichment)

# 2. Plot
library(ggplot2)
ggplot(enrich_data, aes(x=fold_enrichment, y=reorder(pathways, fold_enrichment))) +
  geom_point(aes(size=-log10(p_values), color=-log10(p_values))) +
  scale_color_gradient(low="blue", high="red") +
  theme_minimal() +
  labs(title="KEGG Pathway Enrichment: Viral Challenge in B. mori",
       x="Fold Enrichment", y="Biological Process",
       size="Significance", color="Significance")