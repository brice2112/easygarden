class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]
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
    n = number_of_compartments(@garden.width)
    m = number_of_implantations(@garden.length)
    i = 0
    while (i <= n) do
      compartment = @garden.compartments.new
      j = 0
      while (j <= m) do
        implantation = compartment.implantations.new
        implantation.vegetable = Vegetable.first
        j += 1
      end
      i += 1
    end

    if @garden.save!
      redirect_to garden_path(@garden.id)
    else
      render new, status: :unprocessable_entity
    end
  end

  def destroy
  end


  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:length, :width, :address, :name)
  end

  def number_of_compartments(garden_width)
    comp_num = (garden_width + ALLEY_W) / (COMP_W + ALLEY_W)
    comp_num.to_i
  end

  def number_of_implantations(garden_length)
    imp_num = garden_length
    imp_num.to_i
  end

end
