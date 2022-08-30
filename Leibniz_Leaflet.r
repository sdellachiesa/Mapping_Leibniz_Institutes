# Location of the Leibniz Institute  - field domain Economics, Social Sciences and Spatial research

if(!require(leaflet)) install.packages(leaflet)
library(leaflet)

# Read point file
df<-read.csv(file='./Leibniz_Instittues_State_GroupDomain.csv', sep=";")
df$lat = as.numeric(format(df$lat, digits = 9))
df$lon = as.numeric(format(df$lon, digits = 9))

# --- Data table to be showed in ui
df_table<-df[c(1,2,3,4,5,6)]



leaflet(df_table) %>% addTiles() %>%
  addCircleMarkers(lng = ~lon, lat = ~lat,
                   popup = paste("<b>INSTITUTE NAME</b>",
                                 "<br>",df_table$Name,"<br>",
                                 paste("<b>FEDERAL STATE</b>","<br>",df_table$FederalState),"<br>",
                                 paste("<b>DOMAIN</b>","<br>",df_table$Domain)))



#, clusterOptions = markerClusterOptions()


# #Plot the points
# leaflet(df_table) %>% addTiles() %>%
#   addMarkers(lng = ~lon, lat = ~lat,
#              popup = paste("INSTITUTE NAME",
#                            "<br>",df_table$Name,"<br>",
#                            paste("FEDERAL STATE","<br>",df_table$FederalState),"<br>",
#                            paste("DOMAIN","<br>",df_table$Domain)))

# Location of the Leibniz Institute  - field domain Economics, Social Sciences and Spatial Research