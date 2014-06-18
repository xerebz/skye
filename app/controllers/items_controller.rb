class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
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
  end
  def show
    @item = Item.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
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
