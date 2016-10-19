class CreateGraphFuels < ActiveRecord::Migration[5.0]
  def change
    create_table :graph_fuels do |t|

   	  t.numeric		:number			#id порядковый номер в графике
   	  t.numeric		:l_na_100_km	# л/ на 100 км

      t.timestamps
    end
  end
end
