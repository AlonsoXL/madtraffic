library(ggmap) 
library(ggplot2)
library(RColorBrewer)

data <- read.csv(file="/home/alonso/Documentos/maddata/Traffic_Madrid4.csv", header=T, stringsAsFactors=F)
data2 <- read.csv(file="/home/alonso/Documentos/maddata/Est_AirQ_Madrid2.csv", header=T, stringsAsFactors=F)
madrid <- get_map(location=c(lon=median(data$Long), lat=median(data$Lat)), zoom=12, maptype='roadmap', color='bw')

data$Medida <- "trafico"
data2$Medida <- "AirQ"
df <- merge(data, data2, all=TRUE)

traf.map <- ggmap(madrid) %+% df +
  aes(x = Long,
      y = Lat, 
      z = intensidad) + 
  stat_summary2d(fun = sum, bins=100,alpha=0.5) + 
  scale_fill_gradientn(name = "veh/h",
                       colours = YlOrBr,
                       space = "Lab") +
  coord_map() + geom_point(color='black', size = 1)

traf.map <- traf.map + geom_point(data = subset(df, Medida == 'AirQ'), color='red', size = 2)

print(traf.map)