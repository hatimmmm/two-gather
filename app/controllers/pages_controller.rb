class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def club
    @club = Club.find(params[:id])
    @posts = @club.posts
    @post = Post.new
  end
  
  def about
  end
  
  def profile
    @user = current_user
    @events = @user.events
    @posts = @user.posts
  end
  
end
