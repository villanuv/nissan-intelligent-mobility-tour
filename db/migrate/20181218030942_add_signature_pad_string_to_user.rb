class AddSignaturePadStringToUser < ActiveRecord::Migration
  def change
    add_column :users, :signature_pad_string, :binary
  end
end
