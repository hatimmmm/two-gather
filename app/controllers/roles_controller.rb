class RolesController < ApplicationController
  before_action :set_role, only: [:show, :destroy]

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    @role.save
    redirect_to role_path(@role)
  end

  def show
  end

  def destroy
    @role.destroy
    redirect_to club_path
  end

  private

  def role_params
    params.require(:role).permit(:name)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end
