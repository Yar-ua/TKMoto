class FuelStataController < ApplicationController
  before_action :set_fuel_statum, only: [:show, :edit, :update, :destroy]

  # GET /fuel_stata
  # GET /fuel_stata.json
  def index
    @fuel_stata = FuelStatum.all
  end

  # GET /fuel_stata/1
  # GET /fuel_stata/1.json
  def show
  end

  # GET /fuel_stata/new
  def new
    @fuel_statum = FuelStatum.new
  end

  # GET /fuel_stata/1/edit
  def edit
  end

  # POST /fuel_stata
  # POST /fuel_stata.json
  def create
    @fuel_statum = FuelStatum.new(fuel_statum_params)


    respond_to do |format|
      if @fuel_statum.save
        format.html { redirect_to @fuel_statum, notice: 'Fuel statum was successfully created.' }
        format.json { render :show, status: :created, location: @fuel_statum }
      else
        format.html { render :new }
        format.json { render json: @fuel_statum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuel_stata/1
  # PATCH/PUT /fuel_stata/1.json
  def update
    respond_to do |format|
      if @fuel_statum.update(fuel_statum_params)
        format.html { redirect_to @fuel_statum, notice: 'Fuel statum was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuel_statum }
      else
        format.html { render :edit }
        format.json { render json: @fuel_statum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_stata/1
  # DELETE /fuel_stata/1.json
  def destroy
    @fuel_statum.destroy
    respond_to do |format|
      format.html { redirect_to fuel_stata_url, notice: 'Fuel statum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel_statum
      @fuel_statum = FuelStatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_statum_params
      params.require(:fuel_statum).permit(:odo, :odo_delta, :refueling, :price_fuel, :fuel_station, :fuel_type)

      #params.fetch(:fuel_statum, {})
    end
end
