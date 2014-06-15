class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end
  def create
      render plain: params[:avatar].inspect
  end
  def new
  end
  def edit
  end
  def show
  end
  def update
  end
  def destroy
  end
end
