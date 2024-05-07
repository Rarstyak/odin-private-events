class EventsController < ApplicationController
  def create
    # user build
  end

  def index
    @events = Event.all
  end
end
