class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string :image_layer
      
      t.timestamps
    end
  end
end
