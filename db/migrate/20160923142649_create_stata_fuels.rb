class CreateStataFuels < ActiveRecord::Migration[5.0]
  def change
    create_table :stata_fuels do |t|
      
      t.float	        :odo 			          # текущие показания одометра, км
      t.float	        :odo_delta		      # изменения показателей одометра (пробег), км
      t.float	        :refueling		      # кол-во заправленного топлива, л
      t.float	        :price_fuel		      # стоимость заправленого топлива, грн
      t.string	      :fuel_station	      # заправка
      t.string	      :fuel_type		      # марка бензина
      t.references    :bike #, foreign_key: true

      t.timestamps
    end
  end
end
