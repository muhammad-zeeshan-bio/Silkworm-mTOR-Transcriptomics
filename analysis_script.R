# 1. Create a Synthetic Transcriptomics Dataset (Mimicking GSE147137)
# We create 100 genes across 6 samples (3 Control vs 3 Infected)
set.seed(123)
genes <- paste0("Gene_", 1:100)
samples <- c("Control_1", "Control_2", "Control_3", "Infected_1", "Infected_2", "Infected_3")
data_matrix <- matrix(rnorm(600, mean=5, sd=2), nrow=100, ncol=6)
rownames(data_matrix) <- genes
colnames(data_matrix) <- samples

# 2. Inject "Signaling Shifts" (Simulating mTOR-related antiviral response)
# We make the first 20 genes up-regulated in the Infected group
data_matrix[1:20, 4:6] <- data_matrix[1:20, 4:6] + 4

# 3. Research Analysis: Find most variable genes
gene_vars <- apply(data_matrix, 1, var)
top_50 <- names(sort(gene_vars, decreasing = TRUE))[1:50]
plot_data <- data_matrix[top_50, ]

# 4. Generate the Final Heatmap
library(pheatmap)
pheatmap(plot_data, 
         main = "Modeled Transcriptomic Response: B. mori Antiviral Signaling",
         color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
         scale = "row",
         cluster_cols = FALSE,
         fontsize_row = 7,
         filename = "Silkworm_Signaling_Heatmap.png")

# Find most variable genes
gene_vars <- apply(data_matrix, 1, var)
top_50 <- names(sort(gene_vars, decreasing = TRUE))[1:50]
plot_data <- data_matrix[top_50, ]

# Generate and save the plot
pheatmap(plot_data, 
         main = "Modeled Transcriptomic Response: B. mori Antiviral Signaling",
         color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
         scale = "row",
         cluster_cols = FALSE,
         fontsize_row = 7,
         filename = "Silkworm_Signaling_Heatmap.png")