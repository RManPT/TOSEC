class ApplicationController < ActionController::Base
  # before_action :init
  
  protect_from_forgery with: :exception
  before_action :init

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
end 
