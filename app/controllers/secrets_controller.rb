class SecretsController < ApplicationController

  def show
    if session[:name] != nil
      render 'show'
    else
      redirect_to '/new'
    end
  end

end
