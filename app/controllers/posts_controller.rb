class PostsController < ApplicationController
 before_action :is_authenticated?
  def index
    @posts = Post.where(user_id: @current_user)
    @post = Post.new()
  end

  def new
    @post = Post.new()
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.errors.any?
        render :new
      else
        flash[:success] = "Added"
        redirect_to @post
  end

  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post.errors.any?
        render :new
      else
        flash[:success] = "Added"
        redirect_to "/posts"
  end
end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :link)
  end

end
