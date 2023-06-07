def address_to_gps_coord(address)
  output = []
  result = Geocoder.search(address).first
  if result
    latitude = result.latitude
    longitude = result.longitude
    output = [latitude, longitude]
  end
  output
end
