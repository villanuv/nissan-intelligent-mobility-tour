class AddPurchasePeriodToUser < ActiveRecord::Migration
  def change
    add_column :users, :purchase_period, :string
  end
end
