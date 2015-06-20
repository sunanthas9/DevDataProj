shinyServer(
  function(input, output) {   
  
    BodyMassIndex <- function(weight,height){
      weight <- weight*0.453592
      height <- height*0.0254
      weight/(height*height)
    }
    
    BodyFatPercent <- function(bmi, age, gender) {
     gender <- as.numeric(gender)
    (1.20*bmi)+(0.23*age)-(10.8*gender)-5.4
    }
    
    bmi <- reactive({BodyMassIndex(input$weight,input$height)})
    bfp <- reactive({BodyFatPercent(bmi(),input$age,input$gender)}) 
    
    output$bmi <- renderPrint({bmi()})
    output$bfp <- renderPrint({bfp()})
    
    }
)