module StataFuelsHelper


  class StataGraph < StataFuel
    attr_accessor :id
    attr_accessor :l_na_100_km
  end


  def stata_l_na_100_km

     @stata_graph = []
     a = []
     b = []

    id = 1

    @view_stata_fuel.each do |stata|
      
      a = (stata.refueling / (stata.odo_delta / 100)).round(2).to_f
	  b = id
	  @stata_graph << a
	  
    id = id + 1
	
    end

  @json_stata = @stata_graph.to_json

  end



end
