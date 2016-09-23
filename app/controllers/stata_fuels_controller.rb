class StataFuelsController < ApplicationController

  def new
  	@stata_fuel = StataFuel.new
  end

  def create
  	#@stata_fuel = StataFuel.new(fuel_params)
  	
    @stata_fuel = StataFuel.new(:odo => "1", :odo_delta => "1", :refueling => "1", :price_fuel => "1", :fuel_station => "1", :fuel_type => "1")

  	if @stata_fuel.save
  		redirect_to 'create'
  	else
  		render 'new'
  	end
  end


  private

    #def set_bike
    #@bike = Bike.find([:bike_id])
    #end

   # def fuel_params
   #   params.require(:stata_fuel).permit(:odo, :odo_delta, :refueling, :price_fuel, :fuel_station, :fuel_type)
   # end

  

end

