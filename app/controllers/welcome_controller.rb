class WelcomeController < ApplicationController
  before_action :prepare_form_data
  def index
    if user_signed_in?
      @role = "administrator"
      #Quando as role existirem isto deixa de ser hard code
      if current_user.admin? # a_variable is the variable we want to compare
        redirect_to collection_types_path
      else 
        if current_user.mod?
          redirect_to releases_path
        else 
          if current_user.pub?
            redirect_to datfiles_path
          else
            redirect_to '/welcome/whatisit'
          end
        end
      end
    else 
      redirect_to '/welcome/whatisit'
    end 
  end
  private
  def prepare_form_data
      if(user_signed_in?)
        @links = Grole.where(user_id: current_user.id).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        if current_user.admin?
          @linksR = Grole.where(user_id: 0, role_id:1).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        end
        if current_user.mod?
          @linksR = Grole.where(user_id: 0, role_id:2).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        end
        if current_user.pub?
          @linksR = Grole.where(user_id: 0, role_id:3).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        end
      end
  end
end
