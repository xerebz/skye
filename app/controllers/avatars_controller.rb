class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end
  def create
      @avatar = avatar.new(avatar_params)
       
        @avatar.save
          redirect_to @avatar
  end
  def new
    @items = Item.all.page(params[:page]).per(18)
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
