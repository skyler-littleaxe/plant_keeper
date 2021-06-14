class CreateWaterLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :water_logs do |t|
      t.date :water_date
      t.time :water_time
      t.references :user, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
