class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to '/welcome/start'
    else 
      redirect_to '/welcome/whatisit'
    end 
  end
end
