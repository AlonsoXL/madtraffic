library(shiny)
library(ggplot2)
library(ggmap)

AQdata <- read.csv('/home/alonso/Documentos/madtraffic/datos/AQ_SEP2014_28079004.csv', sep=',', dec = ".", header=T)
AQdata$Fecha <- strptime(AQdata$Datum, "%a %d-%m %H")
AQdata$hora <- strftime(AQdata$Fecha, "%H")

shinyServer(function(input, output) {

output$map <- renderPlot({ 
if (input$EstacionAQ == 'Plaza de España') {
    mad <- get_map(location = c(lon=-3.712247, lat=40.423853), zoom = 16, maptype='roadmap', color='bw')
  }
  
if (input$EstacionAQ == 'Escuelas Aguirre') {
    mad <- get_map(location = c(lon=-3.682319, lat=40.421564), zoom = 16, maptype='roadmap', color='bw')
  }
        mapPlot <- ggmap(mad)
        print(mapPlot)

}, width = 700) 

output$graf <- renderPlot({
  
  p <- ggplot(AQdata, aes(x=AQdata$hora, y=AQdata$NO2)) + geom_point() + geom_hline(yintercept=200, color='red')
  
  print(p)
  
}, height = 350)

})
