#install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
#home
m <- addCircleMarkers(m, lng=-118.288286, lat=34.030209,label="Apartment", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
#library
m <- addCircleMarkers(m, lng=-118.282922, lat=34.021808,label="Leavey Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283801, lat=34.020213,label="Dohney Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.288805, lat=34.019645,label="SciEng Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.287683, lat=34.019130,label="Helen Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.286444, lat=34.018581,label="Hoose Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285686, lat=34.019456,label="Account Lib", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
#fountain
m <- addCircleMarkers(m, lng=-118.283247, lat=34.022237,label="Generatn Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285212, lat=34.020206,label="PFS Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283448, lat=34.020465,label="Garden Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.284562, lat=34.020541,label="Alumni Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.289021, lat=34.020498,label="Epstien Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285003, lat=34.019132,label="SSi Ftn", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m
