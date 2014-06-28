class AvatarsController < ApplicationController
  before_action :authenticate_user!
  def index
    @avatar = current_user.avatar
  end
  def create
      @avatar = Avatar.new(avatar_params)
       
        @avatar.save
          redirect_to @avatar
  end
  def new
    @avatar = Avatar.new(:user_id => current_user.id)
    @items = Item.search(params[:search])
  end
  def edit
  end
  def show
  end
  def update
  end
  def destroy
  end
  private
  def avatar_params
    params.require(:avatar).permit(:name, :sex, :skin_tone)
  end
end
