class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: current_user.avatar
  end

  def create
    @avatar = current_user.create_avatar(avatar_params)
     
      @avatar.save
        redirect_to edit_avatar_path(@avatar)
  end

  def new
    @avatar = Avatar.new
  end

  def edit
    @avatar = current_user.avatar
    @items = Item.search(@avatar.gender,params[:search])
    puts @avatar.gender
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
