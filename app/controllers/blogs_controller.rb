class BlogsController < ApplicationController
  def index
  end

  def new
  	@blogs = Blog.all
  	@blog = Blog.find(params[:id])
  	@blog = Blog.new
  end
  
  def edit
	@blog = Blog.find(params[:id])
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blog_path
  end



  private

  def show
  	@blog = Blog.new
   	
   end 
  def blog_params
  	params.require(:blog).permit(:title, :body)
  end
end
