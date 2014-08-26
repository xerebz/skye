class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
  	if resource.save
  		@starter_items = Item.starter_items()
  		UserItem.create({user_id: resource.id, item_id: 1})
  	end
  end

  def update
    super
  end
end 