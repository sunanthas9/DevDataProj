shinyUI(fluidPage(style="padding-top: 80px;",
  
  headerPanel (
    h1("BMI and Body Fat Calculator", style = "font-weight: 500; line-height: 1.1; 
        color: #4d3a7d;")),
  
  absolutePanel(
     top = 2, left = 50, width = 1300,
     fixed = TRUE, 
     h5("This Shiny app is designed to calculate the Body Mass Index (BMI) and the Body Fat percentage
        based on your gender, age, height (note: in inches) and weight. Please enter the values in the appropriate boxes on the side panel and hit 'Submit'
        to see the results. Please note that the results DO NOT refresh until 'Submit' is hit with new inputs.",
        style = "font-family: 'Lobster';font-size: 125%;
        font-weight: 250; line-height: 2.0;"
        )),
      
  sidebarPanel(
    selectInput('gender', "Choose your gender",
                       c("Female" = "0",
                         "Male" = "1")),
    numericInput('age', 'Enter your age in years', 40),
    numericInput('weight', 'Enter your weight in pounds', 150),
    numericInput('height', 'Enter your height in inches', 60),
    submitButton('Submit')
    
  ),
  
  mainPanel(    
    h4('Your BMI is'),
    verbatimTextOutput('bmi'),
    h4('Your Body fat % is'),
    verbatimTextOutput('bfp')
    )
))