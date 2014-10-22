library(shiny)
library(ggmap)

shinyServer(function(input, output) {

mapSourceInput <- reactive({
  })
  
output$map <- renderPlot({ 
if (input$EstacionAQ == 'Plaza de España') {
    mad <- get_map(location = c(lon=-3.712247, lat=40.423853), zoom = 16, maptype='roadmap', color='bw')
  }
  
if (input$EstacionAQ == 'Escuelas Aguirre') {
    mad <- get_map(location = c(lon=-3.682319, lat=40.421564), zoom = 16, maptype='roadmap', color='bw')
  }
        mapPlot <- ggmap(mad)
        print(mapPlot)

}, height = 400, width = 600 ) 

})