class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    @blogs = Blog.create(blog_params)
    redirect_to new_blog_path
  end

  def show
  end

  def edit
  end

  private

  def blog_params
    params.require(:blog).permit(:content)
  end
end
