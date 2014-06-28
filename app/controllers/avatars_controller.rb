class AvatarsController < ApplicationController
  before_action :authenticate_user!
  def index
    @avatar = current_user.avatar
  end
  def create
      @avatar = current_user.avatar.create(avatar_params)
       
        @avatar.save
          redirect_to @avatar
  end
  def new
    @avatar = Avatar.new
  end
  def edit
    @items = Item.search(params[:search])
  end
  def show
  end
  def update
  end
  def destroy
  end
  private
  def avatar_params
    params.require(:avatar).permit(:name, :sex, :skin_tone, :user_id)
  end
end
