class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
  end

  def destroy
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

end
