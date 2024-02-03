class PagesController < ApplicationController
  def home
  end

  def club
    @club = Club.find(params[:id])
    @posts = @club.posts
    @post = Post.new
  end
end
