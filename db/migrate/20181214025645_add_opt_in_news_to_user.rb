class AddOptInNewsToUser < ActiveRecord::Migration
  def change
    add_column :users, :opt_in_news, :boolean
  end
end
