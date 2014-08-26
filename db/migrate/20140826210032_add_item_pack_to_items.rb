class AddItemPackToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_pack, :string
  end
end
