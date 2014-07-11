class AddSexToItem < ActiveRecord::Migration
  def change
    add_column :items, :sex, :string
  end
end
