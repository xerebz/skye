class AddImageLayerToImages < ActiveRecord::Migration
  def change
    add_column :images, :image_layer, :string
  end
end
