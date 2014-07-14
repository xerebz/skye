class ItemsController < ApplicationController
  #require authentication to a create new item, or edit or destroy an existing one
  before_action :authenticate_user!,
    :only => [:new, :destroy, :edit]

  #display all items for the item catalog
  def index
    @items = Item.all
  end

  #instantiate a new item and build its images
  def new
    @item = Item.new
    @image = @item.images.build
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        params[:images]['image_layer'].each do |a|
          @image = @item.images.create!(:image_layer => a, :item_id => @item.id)
        end
        format.html { redirect_to @item, notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    #todo
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name, images_attributes: [:id, :item_id, :image_layer])
  end
end
