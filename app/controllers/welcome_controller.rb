class WelcomeController < ApplicationController
  before_action :prepare_form_data
  def index
    if user_signed_in?
      @role = "administrator"
      #Quando as role existirem isto deixa de ser hard code
      case @role # a_variable is the variable we want to compare
      when "administrator"    #compare to 1
        redirect_to collection_types_path
      when "moderator"    #compare to 2
        redirect_to releases_path
      when "publisher"  
        redirect_to datfiles_path
      else
        redirect_to '/welcome/whatisit'
      end
    else 
      redirect_to '/welcome/whatisit'
    end 
  end
  private
  def prepare_form_data
      if(user_signed_in?)
        @links = Grole.where(user_id: current_user.id)
      end
  end
end
