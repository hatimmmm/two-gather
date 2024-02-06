class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(club_id: params[:club_id])
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to club_path(@post.club)
  end

  def show
    Post.comments
  end

  def destroy
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:content, :user_id, :club_id, :photo)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
