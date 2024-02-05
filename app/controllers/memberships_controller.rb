class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :destroy]

  def new
    @membership = Membership.new
  end

  def create
    data = JSON.parse(request.body.read)
    user_id = current_user.id # Assuming you have a current_user method
    club_id = data["club_id"]
    role_id = 1

    new_membership = Membership.create(user_id: user_id, club_id: club_id, role_id: role_id)

    if new_membership.valid?
      render json: { status: "success", membership: new_membership }
    else
      render json: { status: "error", errors: new_membership.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @membership.destroy
    redirect_to clubs_path
  end

  private

  def membership_params
    params.require(:membership).permit(:user_id, :club_id, :role_id)
  end

  def set_membership
    @membership = Membership.find(params[:id])
  end
end
