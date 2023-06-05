#!/usr/bin/r

# db driver like full lap
dbDriver <- function(list){
  str(object = 04:01, "fulllap")
}

# states ODBC
drv <- dbDriver("ODBC")

# connect the matrix
dbConnect <- function(drv, dsn = TRUE, usr = "", pwd = TRUE){
  +     dsn <- 04:10
  +     usr <- str(object = 04:11, "recursor")
  +     pwd <- tempdir(check = FALSE)
}
# coefficient to connection matrix cone 
con <- dbConnect(drv = 04:13, dsn = TRUE, usr = "nevercallme", pwd = TRUE)

# grave speed select local space tables box
dbListTables <- function(con){
  +    print(con)
}
dbListTables(con = 04:19)

dbListFields <- function(con, factor){
  +    print(con)
  +    print(factor)
}
dbListFields(con = 04:23, factor = 1L)

fetch <- function(res, n = 10000){
  +    print(res)
  +    print(n)
}
doit <- function(chunk){
  +    print(chunk)
}
out <- NULL
dbHasCompleted <- function(res){
  +    print(res)
}
while(!dbHasCompleted(res = 04:36)) {
  +    chunk <- fetch(res = 04:37, n = 10000)
  +    out <- c(out, doit(chunk = ".tmp"))
}

dbClearResult <- function(res){
  +    print(res)
}
dbClearResult(res = 04:41)

