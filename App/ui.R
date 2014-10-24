library(shiny)

shinyUI(fluidPage(
  
titlePanel("MADtraffic"),

sidebarLayout(
  
  sidebarPanel(
    helpText("Una Web App que permite visualizar la densidad de tráfico y la calidad del aire en MADRID."),
    selectInput("EstacionAQ", "Selecciona la estación de Calidad de Aire", choices = c("Plaza de España", "Escuelas Aguirre","Avenida Ramón y Cajal", "Arturo Soria")),
    checkboxGroupInput("Contaminante", "Contaminantes:", choices =c("NO2","O3","PM2.5")),
    selectInput("Mes", "Selecciona Mes", choices = c("Enero", "Febrero", "Marzo", "Abril"))
    
    ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Graficas",  
              p(style="text-align:justify",'La calidad del aire en las grandes ciudades como MADRID depende, entre otros factores de las emisiones contaminantes de los vehiculos a motor. 
      Nuestra aplicación web pretende visualizar esta relación y alertar de situaciones alarmantes de contaminación relacionadas con el tráfico.'),  
              p(style="text-align:justify",'Selecciona el contaminante entre los de la red de Calidad de Aire de la ciudad de Madrid (NO2,O3,PM) y el mes que quieres visualizar para comprobar si se han excedido los niveles de contaminación en la zona.'),
              plotOutput(outputId= 'graf')),
      tabPanel("Mapa",
               plotOutput(outputId= 'map')),  
      tabPanel("Datos")
    )
  )
)
))
    
