require 'net/http'
require 'json'

def get_weather(latitude, longitude)
  api_key = WEATHER
  # API endpoint URL
  url = "https://api.openweathermap.org/data/2.5/weather?lat=#{latitude}&lon=#{longitude}&appid=#{api_key}"

  # Make an HTTP GET request to the API
  response = Net::HTTP.get(URI(url))

  # Parse the JSON response
  data = JSON.parse(response)

  if data['cod'] == 200
    # Extract relevant weather information from the response
    temperature = data['main']['temp']
    weather_description = data['weather'][0]['description']
    humidity = data['main']['humidity']

    # Return the weather data
    return {
      temperature: temperature,
      description: weather_description,
      humidity: humidity
    }
  else
    # Handle API error response
    error_message = data['message']
    puts "Error: #{error_message}"
    return nil
  end
end


# API request example :
"https://history.openweathermap.org/data/2.5/aggregated/year?lat=35&lon=139&appid=5e5ae1e28bd8f7d9558fa46d0e022d64"
