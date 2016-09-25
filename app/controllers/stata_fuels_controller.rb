class StataFuelsController < ApplicationController
  before_action :set_stata_fuels

  def index

  end


  def new
  	@stata_fuel = StataFuel.new
    @view_fuel_stata = StataFuel.where("bike_id = ?", params[:bike_id])
  end

  def create

  	@bike = Bike.find(params[:bike_id])
    @bike.stata_fuels.create(fuel_params)
 		redirect_to new_bike_stata_fuel_path
 	
  end


  def show
    @stata_fuel = Statafuel.find(params[:id])
  end


  private

    def set_stata_fuels
      @stata_fuels = StataFuel.all
    end


    def fuel_params
      params.require(:stata_fuel).permit(:bike_id, :odo, :odo_delta, :refueling, :price_fuel, :fuel_station, :fuel_type)
    end

  

end

