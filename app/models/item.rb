# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  category   :string(255)
#  gender     :string(255)
#

class Item < ActiveRecord::Base
	
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  acts_as_taggable

	def self.search(gender, search)
	  if search
	    where("gender = ? OR gender = ? AND name ILIKE ?", gender.downcase, "neutral", "%#{search}%")
	  else
	    where("gender = ? OR gender = ?", gender.downcase, "neutral")
	  end
	end

end
