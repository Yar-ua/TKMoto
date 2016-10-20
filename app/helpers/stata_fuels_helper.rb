module StataFuelsHelper


  def get_stata_l_na_100_km

     @stata_graph = []

    @view_stata_fuel.each do |stata|
      
      @stata_graph << (stata.refueling / (stata.odo_delta / 100)).round(2).to_f
		
    end

  @json_stata_l_na_100_km = @stata_graph.to_json

  end


end