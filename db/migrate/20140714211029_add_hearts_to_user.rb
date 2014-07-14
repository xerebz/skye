class AddHeartsToUser < ActiveRecord::Migration
  def change
    add_column :users, :hearts, :integer
  end
end
