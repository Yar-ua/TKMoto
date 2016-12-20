class CreateStataRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :stata_repairs do |t|

      t.timestamps
    end
  end
end
