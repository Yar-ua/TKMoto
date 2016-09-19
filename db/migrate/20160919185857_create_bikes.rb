class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.integer :user_id
      t.integer :year
      t.string :color

      t.timestamps
    end
  end
end
