library(shiny)

daysbetween <- function(date1,date2) {
  if(date2 > date1) (date2-date1 +1)
  else if(date2 < date1) ((date1-date2 +1)*-1)
  else if(date2 == date1) 1
}

difchoice <- function(date1, date2, id2) {

  if(id2 == "3") (daysbetween(date1,date2))
  else if(id2 == "1") daysbetween(date1,as.Date("1969-07-16"))
  else if(id2 == "2") date1 + 99
}
  
shinyServer(
  function(input,output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$odate <- renderPrint({input$date})
    output$difdate <- renderPrint({difchoice(input$date, input$date2,input$id2)})
  }
  )