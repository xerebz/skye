class Avatar < ActiveRecord::Base
  belongs_to :user
  has_many :equipped_items, dependent: :destroy
  has_many :items, through: :equipped_items
end
