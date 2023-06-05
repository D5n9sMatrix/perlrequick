#!/usr/bin/r

library(R6)

#' R6 class that defines a person
Person <<- R6::R6Class("Person",
                       public = list(
                         #' @description 
                         #' Constructor of the 'Person' class
                         #' @param name a string that defines this person's name
                         #' @param id an integer that defines this person's id
                         #' @return A new 'Person' object
                         initialize = function(name, id){
                           private$name <- name
                           private$id <- id
                         },
                         
                         get_name = function(){return(private$name)},
                         
                         get_id = function(){return(private$id)},
                         
                         #' @description 
                         #' Gives an item to the person
                         #' @param item a string that defines the item
                         give_item = function(item){private$item <- item},
                         
                         #' @description 
                         #' A public function that calls a private one
                         good_foo = function(){
                           return(paste0("Wrapped inside: {", private$bad_foo(), "}"))
                         }
                       ),
                       private = list(
                         #' @field name the name of the person
                         name = NULL,
                         #' @field id the id of the person
                         id = NULL,
                         #' @field item some item that the person has
                         item = NULL,
                         
                         #' @description 
                         #' A private function that should not be called from outside the object
                         bad_foo = function(){return("This is a private function")}
                       )
)
# cran pie replay master channel bio cray easy to personal
person(given = NULL, family = NULL, middle = NULL, email = NULL, role = NULL, comment = NULL, first = NULL, last = NULL)
