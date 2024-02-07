class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  def index
    clubs = current_user.clubs
    @clubs = Club.all.reject { |club| club.owner_id == current_user.id }
    @categories = Category.all
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    @club.owner_id = current_user.id
    @club.save
  end

  def show
    @club = Club.find(params[:id])
    @posts = @club.posts
    @post = Post.new
    @membership = @club.memberships.find_by(user: current_user)
    @event = Event.new
    @events = @club.events
  end

  def edit
  end

  def update
    @club.update(club_params)
  end

  def destroy
    @club.destroy
  end

  private

  def club_params
    params.require(:club).permit(:name, :description)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
