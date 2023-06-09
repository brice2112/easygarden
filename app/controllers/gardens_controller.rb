require 'net/http'
require 'json'
require_relative '../helpers/implant'

class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy, :garden_created, :implant, :garden_implanted, :set_vegetables_for_weather, :implant_garden]
  before_action :set_vegetables_for_weather, only: [:implant]
  COMP_W = 1
  IMP_L = 1
  ALLEY_W = 0.5

  def index
    @gardens = Garden.all
  end

  def show
  end



  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user

    # Calculate number of compartments
    n = number_of_compartments(@garden.width)
    m = number_of_implantations(@garden.length)
    i = 0
    while (i <= n) do
      @garden.compartments.new
      # j = 0
      # while (j <= m) do
      #   implantation = compartment.implantations.new
      #   implantation.vegetable = Vegetable.first
      #   j += 1
      # end
      i += 1
    end

    if @garden.save!
      redirect_to garden_created_path(@garden)
    else
      render new, status: :unprocessable_entity
    end
  end

  def garden_created
    gps_coords = get_gps_coord(@garden.location)
    mean_temp = get_mean_temp(gps_coords[0], gps_coords[1])
    @garden.update(mean_temperature: mean_temp)
    @suitable_vegetables = set_vegetables_for_weather
  end

  def implant
    @choices = params.select { |key, value| key.to_s.match("vegetable") }
    @array_of_veggie = @choices.values
    @implantation = get_synergies(@array_of_veggie, @vegetables_for_weather, @garden.length)
    redirect_to garden_implanted_path(@garden, implantation: @implantation)
  end

  def garden_implanted
  end

  def destroy
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:length, :width, :location, :name)
  end

  def number_of_compartments(garden_width)
    comp_num = (garden_width + ALLEY_W) / (COMP_W + ALLEY_W)
    comp_num.to_i
  end

  def number_of_implantations(garden_length)
    imp_num = garden_length
    imp_num.to_i
  end

  def get_gps_coord(address)
    output = []
    result = Geocoder.search(address).first
    if result
      latitude = result.latitude
      longitude = result.longitude
      output = [latitude, longitude]
    end
    output
  end

  def get_mean_temp(latitude, longitude)
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
      max_mean_temp = max_temp.inject { |sum, el| sum + el }.to_f / max_temp.size
      min_mean_temp = min_temp.inject { |sum, el| sum + el }.to_f / min_temp.size
      mean_temp = (max_mean_temp + min_mean_temp) / 2
      result = mean_temp.truncate(2)
    end
    result
  end

  def set_vegetables_for_weather
    mean_temp = @garden.mean_temperature
    @vegetables_for_weather = []
    Vegetable.all.each do |vegetable|
      if mean_temp > vegetable.min_temp && mean_temp < vegetable.max_temp
        @vegetables_for_weather.append(vegetable)
      end
    end
    @vegetables_for_weather
  end
end

def implant_garden(implantation)

end
