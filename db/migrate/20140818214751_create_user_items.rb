class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.integer :stacking_order
      t.boolean :flipped
      t.references :user, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
