class EventAttendingsController < ApplicationController
  def new
    @event_attending = EventAttending.new
  end

  def create
    @event_attending = EventAttending.new(event_attending_params)

    if @event_attending.save
      redirect_to event_path(@event_attending.attended_event_id)
    else
      render :new, status: unprocessable_entity
    end
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
