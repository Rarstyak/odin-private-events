class EventsController < ApplicationController
  before_action :authenticate_user!, :require_login, only: %i[create]

  def create
    # @event = current_user.build_event()

    if @event.save
      redirect_to events_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def index
    @events = Event.all
  end
end
