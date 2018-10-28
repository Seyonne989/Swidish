download(leaflet)
install(leaflet)
# part 1-3
leaflet(
  data = gadmCHE,
  options = leafletOptions(minZoom = 5, maxZoom = 9)
) %>%
  # part 4-5
  addProviderTiles(provider = "Esri.WorldGrayCanvas") %>%
  setView(lng = 8.2, lat = 46.8, zoom = 8) %>%
  addPolygons(
    color = "red",
    weight = 3,
    opacity = 0.3,
    fillColor = "white",
    fillOpacity = 1,
    # part 7
    highlightOptions = highlightOptions(color = "darkred", opacity = 1),
    label = ~NAME_1
  ) %>%
  # part 6
  addMarkers(
    lng = gadmCHE@polygons[[6]]@labpt[1],
    lat = gadmCHE@polygons[[6]]@labpt[2]
  )%>%
  #parts 9 - 10
  addMeasure(
    primaryLengthUnit = "kilometers",
    primaryAreaUnit = "sqmeters"
  )%>%
  addMiniMap (
    tiles = providers$Esri.WorldGrayCanvas,
    toggleDisplay = TRUE,
    minimized = TRUE
  )
