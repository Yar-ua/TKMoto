class FuelStataController < ApplicationController
  #before_action :set_bike, only: [ :new, :create, :show, :edit, :update, :destroy ]
  
  def new
    @fuel_stata = FuelStata.new
  end


  def create

    #@bike = Bike.find(params[:id])
    #@bike.fuel_stata.create(fuel_params)
    @fuel_stata = FuelStata.new(fuel_params)
    #@fuel_stata.bike_id = params[:bike_id]
    if @fuel_stata.save
      render 'create'
    else
      render 'new'
    end


  end

end


  private

  #def set_bike
  #@bike = Bike.find([:bike_id])
  #end

  def fuel_params
    params.require(:fuel_stata).permit(:odo, :odo_delta, :refueling, :price_fuel, :fuel_station, :fuel_type)
  end