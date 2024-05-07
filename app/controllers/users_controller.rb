class UsersController < ApplicationController
  def show
    @userEvents = Event.where(creator_id: params[:id])
  end
end
