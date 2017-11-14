class ApplicationController < ActionController::Base
    before_action :init
    
    def init
      @controller = controller_name
      @action = action_name
    end
end 
