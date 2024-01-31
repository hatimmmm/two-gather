class ClubCategoriesController < ApplicationController
  before_action :set_event, only: [:show, :destroy]
  
  def destroy
    @club_category = ClubCategory.find(params[:id])
    @club_category.destroy
    redirect_to club_categories_path
  end

  private
  def set_club_category
    @club_category = ClubCategory.find(params[:id])
  end
end
