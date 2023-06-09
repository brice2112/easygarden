require 'net/http'
require 'json'
# require 'awesome_print'

def get_weather(latitude, longitude)
  result = nil

  # API endpoint URL
  url = "https://api.open-meteo.com/v1/forecast?latitude=#{latitude}&longitude=#{longitude}&daily=temperature_2m_max,temperature_2m_min,precipitation_sum&past_days=92&forecast_days=16&timezone=Europe%2FLondon"

  # Make an HTTP GET request to the API
  response = Net::HTTP.get(URI(url))

  # Parse the JSON response
  data = JSON.parse(response)

  # Extract temperature data and calculate averages
  if data['daily']
      max_temp = data['daily']['temperature_2m_max']
      min_temp = data['daily']['temperature_2m_min']
      max_mean_temp = max_temp.inject{ |sum, el| sum + el }.to_f / max_temp.size
      min_mean_temp = min_temp.inject{ |sum, el| sum + el }.to_f / min_temp.size
      mean_temp = (max_mean_temp + min_mean_temp) / 2
      result = mean_temp.truncate(2)
  end
  result
end
