class ArticlesController < ApplicationController

  def show
    #byebug #debugger to see which params are being used
     @article = Article.find(params[:id])  #@ converts into instance varaible so it can be accessed
  end

  def index
     @articles = Article.all
  end

  def new

  end

  def create
     # render plain: params[:article]

    @article = Article.new(params.require(:article).permit(:title, :description))

     # render plain: @article.inspect

    if @article.save
      redirect_to @article
    else
      render 'new'
    end


  end





end
