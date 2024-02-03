class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]

  def index
    @interest = Interest.all
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.save
    redirect_to interest_path(@interest)
  end

  def show
  end

  def edit
    render :edit_interest
  end

  def update
    if @interest.update(interest_params)
      # Successful update
      redirect_to @interest, notice: 'The interest was successfully updated.'
    else
      # Validation errors or other issues
      render :edit_interest
    end
  end

  def destroy
    @interest.destroy
    redirect_to user_interest_path
  end

  private

  def interest_params
    params.require(:interest).permit(:name, :description)
  end

  def set_interest
    @interest = Interest.find(params[:id])
  end
end
