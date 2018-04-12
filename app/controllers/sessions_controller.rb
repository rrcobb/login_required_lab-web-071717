class SessionsController < ApplicationController

  def create
    name = params[:name]
    if name.presence
      session[:name] = name
      redirect_to secrets_path
    else
      redirect_to '/'
    end
  end

  def new
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
