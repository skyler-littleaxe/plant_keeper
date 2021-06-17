class RenameWaterLogsToWaterings < ActiveRecord::Migration[6.1]
  def change
    rename_table :water_logs, :waterings
  end
end
