library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("How many days between (inclusive)? (or how many days old are you?)"),
  sidebarPanel(
    dateInput("date","Starting Date (Birthday),:", value = "2014-01-20"),
    radioButtons("id2","Checkbox",
                       c("1. First man on the moon" = "1",
                        "2. Calculate new date 100 days later" = "2",
                        "3. Selected Date Below" = "3")),
    dateInput("date2","Optional Selected Date (defalt today):"),  
    #numericInput('id1', 'Numeric input, labeled id1', 1, min = 0, step = 1),
    submitButton('Submit')
    ),
  mainPanel(
    h3('You entered choice'),
    verbatimTextOutput("oid2"),
    h4('You entered as the starting date'),
    verbatimTextOutput("odate"),
    h3('The number of days different or output date'),
    verbatimTextOutput("difdate")
    )
  ))