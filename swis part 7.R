download(leadlet)
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
    opacity = 0.7,
    fillColor = "white",
    fillOpacity = 1
  ) %>%
  # part 6
  addMarkers(
    lng = gadmCHE@polygons[[6]]@labpt[1],
    lat = gadmCHE@polygons[[6]]@labpt[2]
  )