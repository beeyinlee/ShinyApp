#Chinese Zodiac Calculator server.R
library(shiny)
zodiac <- function(year) {
  x <- year%%12
  if (x == 0) {
    print("Monkey.  Your best match are Snake, Dragon, Rat")
  } else if (x == 1) {
    print("Rooster.  Your best match are Dragon, Ox, Snake")
  } else if (x == 2) {
    print("Dog.  Your best match are Rabbit, Horse, Tiger")
  } else if (x == 3) {
    print("Pig.  Your best match are Tiger, Rabbit, Goat")
  } else if (x == 4) {
    print("Rat.  Your best match are Ox, Dragon, Monkey")
  } else if (x == 5) {
    print("Ox.  Your best match are Rat, Rooster, Snake")
  } else if (x == 6) {
    print("Tiger.  Your best match are Pig, Horse, Dog")
  } else if (x == 7) {
    print("Rabbit.  Your best match are Dog, Pig, Goat")
  } else if (x == 8) {
    print("Dragon.  Your best match are Rooster, Monkey, Rat")
  } else if (x == 9) {
    print("Snake.  Your best match are Monkey, Rooster, Ox")
  } else if (x == 10) {
    print("Horse.  Your best match are Goat, Dog, Tiger")
  } else if (x == 11) {
    print("Goat.  Your best match are Horse, Rabbit, Pig")
  } else
    print("Error")
}

function(input, output) {
  output$inputValue <- renderPrint({input$year})
  output$prediction <- renderPrint({zodiac(input$year)})
}
