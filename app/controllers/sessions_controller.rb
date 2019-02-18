class SessionsController < ApplicationController
  def new
  end

  def create

    redirect_to controller: 'users',  action: 'welcome'
  end
end
