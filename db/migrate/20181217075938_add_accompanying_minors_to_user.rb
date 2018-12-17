class AddAccompanyingMinorsToUser < ActiveRecord::Migration
  def change
    add_column :users, :accompanying_minors, :boolean
  end
end
