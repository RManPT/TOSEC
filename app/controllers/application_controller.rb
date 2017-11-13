class ApplicationController < ActionController::Base
    before_action :your_function
    
    def your_function
      @controller = controller_name
      @action = action_name
    end
end 
