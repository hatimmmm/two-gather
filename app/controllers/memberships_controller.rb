class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :destroy]

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.save
    redirect_to membership_path(@membership)
  end

  def show
  end

  def destroy
    @membership.destroy
    redirect_to club_path
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id, :club_id, :role_id)
  end

  def set_membership
    @membership = Membership.find(params[:id])
  end
end
