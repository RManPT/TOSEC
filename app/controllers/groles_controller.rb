class GrolesController < ApplicationController
    before_action :authenticate_user!
    before_action :prepare_form_data
    def create
        @grole = Grole.new(grole_params)
 
        if @grole.save
            redirect_to @grole
        else
            prepare_form_data
            render 'new'
        end
    end
    
    def destroy
        @grole = Grole.find(params[:id])
        @grole.destroy
    
        redirect_to groles_path
    end
    
    def edit
        @grole = Grole.find(params[:id])
        prepare_form_data
    end

    def index
        @groles = Grole.all.page(params[:page]).per(20)
    end
    def new
        @grole = Grole.new
        prepare_form_data
    end
    def show
        @grole = Grole.find(params[:id])
    end
    def update
        @grole = Grole.find(params[:id])
       
        if @grole.update(grole_params)
          redirect_to @grole
        else
            prepare_form_data
            render 'edit'
        end
      end
private
def grole_params
    params.require(:grole).permit(:user_id,:route_id,:role_id)
end
    def prepare_form_data
        @users = User.all
        @roles = Role.all
        @routes = Route.all
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
