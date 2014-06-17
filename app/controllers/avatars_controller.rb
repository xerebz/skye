class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
    @males = Dir.glob("app/assets/images/MaleA*.png")
    @females = Dir.glob("app/assets/images/FemaleA*.png")
  end
  def create
      @article = Article.new(params[:article])
       
        @article.save
          redirect_to @article
  end
  def new
    @males = Dir.glob("app/assets/images/MaleA*.png")
    @females = Dir.glob("app/assets/images/FemaleA*.png")
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
