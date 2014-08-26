class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @avatar = current_user.avatar
  end

  def create
      @avatar = current_user.create_avatar(avatar_params)
       
        @avatar.save
          redirect_to edit_avatar_path(@avatar)
  end

  def new
    @avatar = Avatar.new
    gon.avatar = @avatar
  end

  def edit
    @avatar = current_user.avatar
    gon.avatar = @avatar
    @items = current_user.items
    gon.items = @items
  end

  def show
    #todo
  end

  def update
    #todo
  end

  def try
    @avatar = current_user.avatar
    gon.avatar = @avatar
    @items = Item.search(@avatar.gender,params[:search])
    gon.items = @items
  end

  def destroy
    current_user.avatar.destroy
    redirect_to avatars_path
  end

  private
  def avatar_params
    params.require(:avatar).permit(:name, :gender, :skin_tone, :user_id)
  end

end
