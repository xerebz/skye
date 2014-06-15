class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def create
      render plain: params[:item].inspect
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
