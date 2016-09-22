class FuelStataController < ApplicationController
#  before_action :set_bike, only: [ :new, :show, :edit, :update, :destroy ]
  
  def new
    @fuel_stata = FuelStatum.new
  end


  def create
#    @fuel_stata = FuelStatum.new(fuel_params)
 #   @fuel_stata.save

    end
end


#  private

#  def set_bike
#    @bike = Bike.find(params[:id])
#  end

#  def fuel_params
#    params.require(:fuelstatum).permit(:bike_id, :odo, :odo_delta, :refueling, :price_fuel, :fuel_station, :fuel_type)
#  end


  #end
