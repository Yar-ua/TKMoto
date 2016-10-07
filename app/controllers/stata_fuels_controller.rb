class StataFuelsController < ApplicationController
   #before_action :set_stata_fuel, only: [ :show, :edit, :update, :destroy ]
   before_action :set_view_stata_fuel


  #def index

  #end

  
  def new
      @bike = Bike.find(params[:bike_id])
      @stata_fuel = StataFuel.new
      @stata_err = StataFuel.new
    end


  def create

  	@bike = Bike.find(params[:bike_id])
    @stata_err = @bike.stata_fuels.create(fuel_params)
    if @stata_err.valid?
      redirect_to new_bike_stata_fuel_path
    else
      render 'new'
    end

  #  if @bike.stata_fuels.create(fuel_params)
  #    redirect_to new_bike_stata_fuel_path
  #  else
  #    @bike.valid?
  #    @bike.errors
  #    redirect_to new_bike_stata_fuel_path
  #  end
 	end


  def show
 
  end


  def edit
    @stata_fuel = StataFuel.find(params[:id])
  end


  def update
    @stata_fuel = StataFuel.find(params[:id])
    @stata_fuel.update(fuel_params)
    redirect_to new_bike_stata_fuel_path
  end


  def destroy
    @stata_fuel = StataFuel.find(params[:id])
    @stata_fuel.destroy
    redirect_to new_bike_stata_fuel_path
  end


  private

    #def set_stata_fuel
    #  @stata_fuel = StataFuel.find(params[:id])
    #end


    def set_view_stata_fuel
      @view_stata_fuel = StataFuel.where("bike_id = ?", params[:bike_id])
    end


    def fuel_params
      params.require(:stata_fuel).permit(
                      :bike_id, :odo, :odo_delta, :refueling, 
                      :price_fuel, :fuel_station, :fuel_type
                    )
    end
  

end