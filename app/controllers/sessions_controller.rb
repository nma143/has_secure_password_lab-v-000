class SessionsController < ApplicationController
  def new
  end

  def create
    #user is trying to log in

    @user = User.find_by(name: params[:user][:name])

    if @user.authenticate(params[:password])

    redirect_to controller: 'users',  action: 'welcome'
  end
end
