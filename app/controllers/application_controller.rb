class ApplicationController < ActionController::Base
  before_action :init

  # load_and_authorize_resource
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to '/', :alert => exception.message
  # end
    
    def init
      @controller = controller_name
      @action = action_name
    end
end 
