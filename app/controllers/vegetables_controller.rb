class VegetablesController < ApplicationController

  def show
    @vegetable = Vegetable.find(params[:id])
    # raise
  end
end
