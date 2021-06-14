class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :location
      t.string :water_need
      t.string :sun_type

      t.timestamps
    end
  end
end
