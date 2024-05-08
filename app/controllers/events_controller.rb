class EventsController < ApplicationController
  before_action :authenticate_user!, :require_login, only: %i[new create]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to events_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location, :body, :creator_id)
  end

  def require_login
    if user_signed_in?
      # allow
    else
      redirect_to events_path
    end
  end
end
