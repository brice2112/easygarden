class ImplantationsController < ApplicationController

  def new
    @implantation = Implantation.new
  end

  def create
    @implantation = Implantation.new(implantation_params)
  end

end
