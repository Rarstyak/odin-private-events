class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @user_events = Event.where(creator_id: params[:id])
    @event_attendings = EventAttending.where(attendee: params[:id])
  end
end
