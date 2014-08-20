# == Schema Information
#
# Table name: user_items
#
#  id             :integer          not null, primary key
#  stacking_order :integer
#  flipped        :boolean
#  user_id        :integer
#  item_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class UserItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
end
