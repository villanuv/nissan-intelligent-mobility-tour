class AddAptSuiteToUser < ActiveRecord::Migration
  def change
    add_column :users, :apt_suite, :string
  end
end
