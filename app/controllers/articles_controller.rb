class ArticlesController < ApplicationController
   def show
    #byebug #debugger to see which params are being used
     @article = Article.find(params[:id])  #@ converts into instance varaible so it can be accessed
   end
end
