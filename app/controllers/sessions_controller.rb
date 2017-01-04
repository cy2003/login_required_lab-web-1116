class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/index'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/index'
  end

end
