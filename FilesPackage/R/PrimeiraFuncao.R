# Functions Renames Multiples Varibles
# bankwithall <- setNames(bankwithall, c("id", "gender"))

renamevaribles <- function(x,y){#x = database y = vector of varible
  x <- stats::setNames(x,y)
}

# Deleting Missing
# bankwithall <- bankwithall[-c(138,176,252,267,282,283,288,289,293:302,304:306),]

cleanrows <- function(z,t){# z = database t= vector of variable
  z <- z[-c(t),]
}







