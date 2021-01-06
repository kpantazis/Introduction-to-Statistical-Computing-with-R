
library(tidyverse)

# loop over indices in vector
out <- rep("", 99)
for (i in 1:98){
  out[i] <- 99-i+1
}
out

# or loop over the bottles
out <- rep("", 99)
for (i in 99:2){
  out[99-i+1] <- i
}
out

# now add text
out <- rep("", 99)
for (i in 1:98){
  x <- 99-i+1
  out[i] <- paste(x, "bottles of beer on the wall,", x, 
                  "bottles of beer. Take one down, pass it around,", 
                  x-1, ",bottles of beer on the wall.")
}
out[99] <- "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
out
out[5]

# turn into function w/o arguments
sing_a_song <- function(){
  out <- rep("", 99)
  for (i in 1:98){
    x <- 99-i+1
    out[i] <- paste(x, "bottles of beer on the wall,", x, 
      "bottles of beer. Take one down, pass it around,", 
      x-1, ",bottles of beer on the wall.")
  }
  out[99] <- "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  return(out)
}
song <- sing_a_song()
song
song[1]
write_lines(song, path = "song.txt")


# add arguments
sing_a_song <- function(n = 99, beverage = "beer"){
  out <- rep("", 99)
  for (i in 1:98){
    x <- 99-i+1
    out[i] <- paste(x, "bottles of", beverage, "on the wall,", x, 
                    "bottles of", beverage, ". Take one down, pass it around,", 
                    x-1, ",bottles of", beverage, "on the wall.")
  }
  out[99] <- "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  return(out)
}
song <- sing_a_song()
song
write_lines(song, path = "song.txt")
