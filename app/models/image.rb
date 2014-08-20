# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  item_id     :integer
#  image_layer :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Image < ActiveRecord::Base
  mount_uploader :image_layer, ImageLayerUploader
  belongs_to :item
end
