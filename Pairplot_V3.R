### required Packages
install.packages("tidyverse")
install.packages("readr")
install.packages("corrplot")


### required library
library(tidyverse)
library(readr)
library(corrplot)

### upload data
data = read_csv(file.choose(),show_col_types = FALSE)

show(data)
colSums(data)

### generate pairplot for checking the dataset

pairs(data)


### Calculate correlation coefficient through pearson, spearman, kendall

cor_matrix <-cor(data, method = "pearson")- default
write.csv(cor_matrix, file = "correlation_matrix_pearson.csv")

cor_matrix <-cor(data, method = "spearman")
write.csv(cor_matrix, file = "correlation_matrix_spearman.csv")

cor_matrix <-cor(data, method = "kendall")
write.csv(cor_matrix, file = "correlation_matrix_kendall.csv")

### Generating different type of Cor matrix plot

P1 <- corrplot(corr = cor(data),
               method = "circle",
               type = "full",
               tl.pos = "tl",
               order = "original")


P2 <- corrplot(corr = cor(data),
               method = "square",
               type = "full",
               tl.pos = "tl",
               order = "original")

P3 <- corrplot(corr = cor(data),
               method = "ellipse",
               type = "full",
               tl.pos = "tl",
               order = "original")

P4 <- corrplot(corr = cor(data),
               method = "number",
               type = "full",
               tl.pos = "tl",
               order = "original")

P5 <- corrplot(corr = cor(data),
               method = "pie",
               type = "full",
               tl.pos = "tl",
               order = "original")

P6 <- corrplot(corr = cor(data),
               method = "color",
               type = "full",
               tl.pos = "tl",
               order = "original")

# when you change type upper and lower
P7 <- corrplot(corr = cor(data),
               method = "circle",
               type = "upper",
               tl.pos = "tl",
               order = "original")

P8 <- corrplot(corr = cor(data),
               method = "circle",
               type = "lower",
               tl.pos = "tl",
               order = "original")


P9 <- corrplot(corr = cor(data),
               method = "circle",
               type = "full",
               tl.pos = "d",
               order = "original")

P10 <- corrplot(corr = cor(data),
                method = "circle",
                type = "full",
                tl.pos = "n",
                order = "original")
P11 <- corrplot(corr = cor(data),
                method = "circle",
                type = "lower",
                tl.pos = "ld")

P12 <- corrplot(corr = cor(data),
                addCoef.col = "white",
                number.cex =0.7,
                number.digits = 2,
                diag = FALSE,
                bg = "green",
                outline = "black",
                addgrid.col = "red",
                mar = c(1,1,1,1))



# Create a color palette for custom color
color_palette <- colorRampPalette(c("blue", "white", "cadetblue2"))(400)

# Generate the corrplot that I liked
P<- corrplot(corr = cor(data),
             addCoef.col = "red",         
             number.cex = 1.2,              
             number.digits = 2,             
             diag = FALSE,                  
             bg = "white",                  
             outline = "black",             
             addgrid.col = "black",         
             mar = c(1, 1, 1, 1),           
             col = color_palette,           
             type = "lower",                
             tl.col = "black",              
             tl.cex = 2)

# Save the plot in TIFF format for publication ready
tiff("Nor_correlation_plot_v2.tiff",
     width = 3000, height = 2500, res = 300, compression = "lzw")

corrplot(corr = cor(data),
         addCoef.col = "red",
         number.cex = 1.2,
         number.digits = 2,
         diag = FALSE,
         bg = "white",
         outline = "black",
         addgrid.col = "black",
         mar = c(1, 1, 1, 1),
         col = color_palette,
         type = "lower",
         tl.col = "black",
         tl.cex = 2)

dev.off()





