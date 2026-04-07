# 1. Load library
library(igraph)

# 2. Define Network
nodes <- data.frame(name=c("PI3K", "AKT", "mTOR", "S6K", "4E-BP1", "Autophagy"))
relations <- data.frame(
  from=c("PI3K", "AKT", "mTOR", "mTOR", "mTOR"),
  to=c("AKT", "mTOR", "S6K", "4E-BP1", "Autophagy")
)

# 3. Plot
g <- graph_from_data_frame(relations, directed=TRUE, vertices=nodes)
plot(g, vertex.color="gold", vertex.size=35, edge.arrow.size=0.7, 
     main="PI3K/AKT/mTOR Protein Interaction Network")