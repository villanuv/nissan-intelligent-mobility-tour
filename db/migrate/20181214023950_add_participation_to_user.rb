class AddParticipationToUser < ActiveRecord::Migration
  def change
    add_column :users, :participation, :string
  end
end
