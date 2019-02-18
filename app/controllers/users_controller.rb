class UsersController < ApplicationController
  def new
  end

  def welcome

  end

  def create
    #sign up
    @user = User.create(user_params)

    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to controller: 'users',  action: 'welcome'
    else
      redirect_to 'new'
    end
    

  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
end
