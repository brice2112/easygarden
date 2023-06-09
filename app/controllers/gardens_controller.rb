require 'net/http'
require 'json'
require_relative '../helpers/implant'
require_relative '../helpers/address_to_gps_coord'
require_relative '../helpers/get_weather'

class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy, :garden_created]
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
    i = 0
    while (i <= n) do
      @garden.compartments.new
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
    @suitable_vegetables = get_suitable_vegetables(mean_temp)
  end

  ########COLLECTING USER REFERENCES AND BUILDING A 'GARDEN' ARRAY#############

  def implant
    @hash = (params)
    @choices = @hash.select { |key, value| key.to_s.match("vegetable") }
    @array_of_veggie = @choices.values
    @garden = Garden.find(params[:id])
    @result = get_synergies(@array_of_veggie, @garden.length)
    redirect_to validate_garden_path(@garden)
  end

  def validate
    @garden = Garden.find(params[:id])
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

  def get_suitable_vegetables(mean_temp)
    suitable_vegetables = []
    Vegetable.all.each do |vegetable|
      if mean_temp > vegetable.min_temp && mean_temp < vegetable.max_temp
        suitable_vegetables.append(vegetable)
      end
    end
    return suitable_vegetables
  end
end
