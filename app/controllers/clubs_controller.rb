class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  def index
    @clubs = Club.all
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
