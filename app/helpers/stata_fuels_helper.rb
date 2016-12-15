module StataFuelsHelper


  def get_stata_l_na_100_km
    @stata_graph = []
    @view_stata_fuel.each do |stata|
      @stata_graph << (stata.refueling / (stata.odo_delta / 100)).round(2).to_f
    end
    @json_stata_l_na_100_km = @stata_graph.to_json
  end


  def get_stata_refueling_to_chart
  	@stata_refueling = []
  	@view_stata_fuel.each do |stata|
      @stata_refueling << stata.refueling.to_f
  	end
    @json_stata_refueling = @stata_refueling.to_json
  end

end