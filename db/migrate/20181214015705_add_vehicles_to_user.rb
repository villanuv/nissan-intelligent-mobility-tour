class AddVehiclesToUser < ActiveRecord::Migration
  def change
    add_column :users, :vehicles, :string
  end
end
