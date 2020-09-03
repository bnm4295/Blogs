class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Post.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_path(@blog), notice: 'Your blog was successfully updated.'}
      else
        format.html { render :edit}
      end
    end
  end

  def create
    @blog = Post.new(blog_params)
    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_path(@blog), notice: 'Your blog has been created!' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @blog = Post.new
  end

  def show
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Your blog has been deleted.' }
    end
  end

  private

    def set_blog
      @blog = Post.find(params[:id])
    end

    def blog_params
      params.require(:post).permit(:title, :text, :photo)
    end

end
