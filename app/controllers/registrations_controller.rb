class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
  	if resource.save
  		@starter_items = Item.starter_items()
      @starter_items.each do |starter_item|
        UserItem.create({user_id: resource.id, item_id: starter_item.id})
      end
  	end
  end

  def update
    super
  end
end 