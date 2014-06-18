class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end
  def create
      @article = Article.new(params[:article])
       
        @article.save
          redirect_to @article
  end
  def new
    @items = Item.take(4)
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
