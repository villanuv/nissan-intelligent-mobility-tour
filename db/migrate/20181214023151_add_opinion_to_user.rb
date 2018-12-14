class AddOpinionToUser < ActiveRecord::Migration
  def change
    add_column :users, :opinion, :integer
  end
end
