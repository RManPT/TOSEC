class ApplicationController < ActionController::Base
  # before_action :init
  
  protect_from_forgery with: :exception
  before_action :init
  before_action :prepare_form_data

  #  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/', :alert => exception.message
  end

  #  protect_from_forgery with: :exception
  #  before_action :authenticate_user!
  #  load_and_authorize_resource
    
    def init
      @controller = controller_name
      @action = action_name
    end
private
    def prepare_form_data
      if(user_signed_in?)
      @links = Grole.where(user_id: current_user.id)
      end
  end
end 
