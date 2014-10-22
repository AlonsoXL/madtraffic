library(shiny)

tabPanelAbout <- source("Intro.R", local=T)$value

shinyUI(pageWithSidebar(
  
# Application title.
headerPanel("MADtraffic"),
  
# Sidebar with controls
sidebarPanel(
  helpText("Una Web App que permite visualizar la densidad de tráfico y la calidad del aire en MADRID."),
  selectInput("EstacionAQ", "Selecciona la estación de Calidad de Aire", choices = c("Plaza de España", "Escuelas Aguirre","Avenida Ramón y Cajal", "Arturo Soria")), 
  ),

#output panel
mainPanel(
    p(style="text-align:justify",'La calidad del aire en las grandes ciudades como MADRID depende, entre otros factores de las emisiones contaminantes de los vehiculos a motor. 
      Nuestra aplicación web pretende visualizar esta relación y alertar de situaciones alarmantes de contaminación relacionadas con el tráfico.'),  
    br(),
    plotOutput("map", width = "100%")
  )
))

    