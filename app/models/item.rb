class Item < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  acts_as_taggable



def self.search(sex, search)
  if search
    where("sex = ? OR sex = ? AND name ILIKE ?", sex.downcase, "neutral", "%#{search}%")
  else
    where("sex = ? OR sex = ?", sex.downcase, "neutral")
  end
end

def self.search(search)
  if search
    where("name ILIKE ?", "%#{search}%")
  else
    all
  end
end

end
