class Image < ActiveRecord::Base
  mount_uploader :image_layer, ImageLayerUploader
  belongs_to :item
end
