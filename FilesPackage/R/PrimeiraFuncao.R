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


# Attempt to created a function

PDS5 <- bankwithall[,28]
PDS5 <- lapply(PDS5, FUN = function(PDS5)
{ifelse( PDS5 == 'Boy', 0,
         ifelse( PDS5 == 'BOY', 0,
                 ifelse( PDS5 == 'NO', 1,
                         ifelse( PDS5 == 'yes',2,
                                 ifelse( PDS5 == 'YES',2,PDS5)))))})

PDS5 <- lapply(PDS5,FUN = function(PDS5){as.numeric(PDS5)})
bankwithall[,28]<- PDS5




