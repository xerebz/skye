class CreateEquippedItems < ActiveRecord::Migration
  def change
    create_table :equipped_items do |t|
      t.references :avatar, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
