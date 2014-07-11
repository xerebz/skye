class Item < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  acts_as_taggable



def self.search(sex, search)
  if search
    where("sex LIKE ? OR sex LIKE ? AND name ILIKE ?", sex.downcase, "neutral", "%#{search}%")
  else
    where("sex LIKE ? OR sex LIKE ?", sex.downcase, "neutral")
  end
end


end
