class AddGemsToUser < ActiveRecord::Migration
  def change
    add_column :users, :gems, :integer
  end
end
