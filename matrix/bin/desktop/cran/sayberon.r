#!/usr/bin/r

tryCatch({res <- access_method("bad_foo")},
         +             error=function(cond){print(paste0("Exception raised: ", cond))})