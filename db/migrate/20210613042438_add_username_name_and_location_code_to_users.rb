class AddUsernameNameAndLocationCodeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :location_code, :string
  end
end
