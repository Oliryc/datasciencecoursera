# datasciencecoursera
content provided for the "Data Scientist’s Toolbox" class

Why R?
==

. R is free
. R is one of the most widely used programming language for data science.
. R has one of the best development enviroments - Rstudio http://www.rstudio.com/

Primary file types - R script: .R
Primary file types - R markdown document: .Rmd

Some important R functions
. Access help file: ?rnorm
. Search help files: help.search("rnorm")
. Get arguments: args("rnorm")

R packages
==
Packages can be installed with the install.packages() function in R
install.packages("slidify")
install.packages(c("slidify", "ggplot2", "devtools"))

Reading Lines of a Text File
==
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con) ## This might take time
head(x)

lapply 
==
takes three arguments: a list X, a function (or the name of a function) FUN, and other arguments via its ... argument. If X is not a list, it will be coerced to a list using as.list.

Reading data
==
Excel, XML, JSON, MySQL, HDF5, Web, etc.

RmySQL
===
ucscDb <- dbConnect(MySQL(), user = "genome", host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;")
dbDisconnect(ucscDb)
result

Merging data
===
mergedData2 <- merge(reviews, solutions, by.x = "solution_id", by.y = "id", all = TRUE)
head( mergedData2[, 1:6], 3)
reviews[1, 1:6]
