class Item < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  acts_as_taggable



def self.search(search)
  if search
    where('name ILIKE ?', '%'+search+'%')
  else
    all
  end
end


end
