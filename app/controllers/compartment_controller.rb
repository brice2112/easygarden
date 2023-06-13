class CompartmentController < ApplicationController

  def new
    @compartment = Compartment.new
  end

  def create
    @compartment = Compartment.new(compartment_params)
  end
end
