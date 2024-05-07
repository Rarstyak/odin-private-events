class UsersController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @userEvents = Event.where(creator_id: params[:id])
  end
end
