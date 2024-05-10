class EventAttendingsController < ApplicationController
  def new
    @event_attending = EventAttending.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_attending_params
    params.require(:event_attending).permit(:attendee_id, :attended_event_id, :rsvp)
  end
end
