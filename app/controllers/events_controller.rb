class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to club_path(@event.club_id)
  end

  def show
  end

  def edit
    render :edit_event
  end

  def update
    if @event.update(event_params)
      # Successful update
      redirect_to @event, notice: "The event was successfully updated."
    else
      # Validation errors or other issues
      render :edit_event
    end
  end

  def destroy
    @event.destroy
    redirect_to club_path
  end

  private

  def event_params
    params.require(:event).permit(:club_id, :event_name, :description, :location, :start_date, :end_date)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
