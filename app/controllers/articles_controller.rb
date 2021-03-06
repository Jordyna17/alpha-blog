class ArticlesController < ApplicationController

  before_action :set_article, only:[:show, :edit, :update, :destroy] #only runs this private method for these functions
  def show
    #byebug #debugger to see which params are being used
   #@ converts into instance varaible so it can be accessed
  end

  def index
     @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end


  def create
     # render plain: params[:article]
    @article = Article.new(article_params)
    @article.user = User.first
     # render plain: @article.inspect

    if @article.save
      flash[:notice] = "Article was saved! yay:)"
      redirect_to @article
    else
      render 'new'
    end

  end

  def update

    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @article
    else
      render 'edit'

    end
  end

  def destroy

    @article.destroy
    redirect_to articles_path

  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end




end
