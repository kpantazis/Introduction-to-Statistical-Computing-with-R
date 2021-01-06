library(tidyverse)

#PART 1
vect <- seq(1, 99, 1)
reverse_vect <- rev(vect)
for (x in c(reverse_vect)) {
  print(paste(x, "bottles of beer on the wall,", x, "bottles of beer. Take one down, pass it around,", x-1, "bottles of beer on the wall.")) 
}

sing_a_song <- function(x) {
  if (x==1) {
    print(paste(x," bottle of beer on the wall,", x, "bottles of beer. Take one down, pass it around, no more bottles of beer on the wall"))
    print(paste("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."))
  } 
  else {
    print(paste(x,"bottles of beer on the wall,", x, "bottles of beer. Take one down, pass it around,", x-1, "bottles of beer on the wall."))
    return(sing_a_song(x-1))
  }
}
sing_a_song(99)



drinking_song <- function(x, y) {
  if (x==1) {
    print(paste(x," bottle of ", y, " on the wall, ", x, " bottles of ", y,". Take one down, pass it around, no more bottles of ", y, " on the wall.", sep=""))
    print(paste("No more bottles of ", y, " on the wall, no more bottles of ", y,". Go to the store and buy some more, 99 bottles of ", y, " on the wall.", sep=""))
  }
  else {
    print(paste(x," bottles of ", y, " on the wall, ", x, " bottles of ", y,". Take one down, pass it around, ", x-1, " bottles of ", y," on the wall.", sep=""))
    return(drinking_song(x-1, y))
  }
}
drinking_song(30, "juice")

#x=99
drinking_song <- function(y) {
  for (x in c(reverse_vect)) {
    print(paste(x," bottle of ", y, " on the wall, ", x, " bottles of ", y,". Take one down, pass it around, no more bottles of ", y, " on the wall.", sep=""))
    
  }
  print(paste("No more bottles of ", y, " on the wall, no more bottles of ", y,". Go to the store and buy some more, 99 bottles of ", y, " on the wall.", sep=""))
}
drinking_song("juice")


#write to file
write_lines(sing_a_song(99), "song.txt")
