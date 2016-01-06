class BlogpostsController < ApplicationController
  def index
    @blogposts = Blogpost.order("created_at ASC")
  end
  
  def new
  end
  
  def create
    @blogpost = Blogpost.new(blogpost_params)
    
    @blogpost.save
    redirect_to @blogpost
  end
  
  def show
    @blogpost = Blogpost.find(params[:id])  
  end
  
  private
  
  def blogpost_params
    params.require(:blogpost).permit(:title, :author, :post)
  end
    
end
