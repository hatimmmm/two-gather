class UserInterestController < ApplicationController
  before_action :set_user_interest, only: [:show, :edit, :update, :destroy]

  def index
    @user_interest = UserInterest.all
  end

  def new
    @user_interest = UserInterest.new
  end

  def create
    @user_interest = UserInterest.new(user_interest_params)
    @user_interest.save
    redirect_to user_interest_path(@user_interest)
  end

  def show
  end


  def destroy
    @user_interest.destroy
    redirect_to user_interest_path
  end

  private

  def user_interest_params
    params.require(:user_interest).permit(:name, :description)
  end

  def set_user_interest
    @user_interest = user_interest.find(params[:id])
  end
end
