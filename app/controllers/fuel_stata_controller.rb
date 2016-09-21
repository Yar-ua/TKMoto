class FuelStataController < ApplicationController
#  before_action :set_bike #, only: [ :new, :show, :edit, :update, :destroy ]
  
  def new
    @fuel_stata = FuelStatum.new
  end


#  private

#  def set_bike
#    @bike = Bike.find(:bike_id)
#  end

end
