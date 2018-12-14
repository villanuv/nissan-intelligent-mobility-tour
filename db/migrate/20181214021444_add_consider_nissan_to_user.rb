class AddConsiderNissanToUser < ActiveRecord::Migration
  def change
    add_column :users, :consider_nissan, :string
  end
end
