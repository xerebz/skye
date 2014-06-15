class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
    @images = Dir.glob("app/assets/images/MaleA*.png")
  end
  def create
      @article = Article.new(params[:article])
       
        @article.save
          redirect_to @article
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
