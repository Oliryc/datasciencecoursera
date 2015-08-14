# Tips and Tricks

Everything in **R** is an **object**
Five "basic"" or "atomic" classes of objects:
- character
- integer
- numeric (real number)
- complex
- logical

Data containers are: vectors, lists, factors, missing values, data frames, names.
The most basic object container is a vector ```{r, results="asis"} vector()```.
```{r}
x <- vector(numeric, length=10)
c <- (1+0i, 2+4i)
m <- matrix(nrow=2, ncol=3)
dim(m)
attributes(m)
```
Vectors contain objects of the same class. Else it's a list.
Unlike matrices, data frames can store different classes of objects in each column; matrices must conserve the same class for each element. 

Some important R functions
* Access help file: ?rnorm
* Search help files: help.search("rnorm")
* Get arguments: args("rnorm")

## Coercion
Objects can be explicitly coerced with as.*

## R packages
Packages can be installed with the install.packages() function in R
install.packages("slidify")
install.packages(c("slidify", "ggplot2", "devtools"))


## Reading Lines of a Text File
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con) ## This might take time
head(x)

## lapply 
takes three arguments: a list X, a function (or the name of a function) FUN, and other arguments via its ... argument. If X is not a list, it will be coerced to a list using as.list.

## Reading data

Excel, XML, JSON, MySQL, HDF5, Web, etc.

### RmySQL

ucscDb <- dbConnect(MySQL(), user = "genome", host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;")
dbDisconnect(ucscDb)
result

### Merging data

mergedData2 <- merge(reviews, solutions, by.x = "solution_id", by.y = "id", all = TRUE)
head( mergedData2[, 1:6], 3)
reviews[1, 1:6]
