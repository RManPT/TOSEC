class RolesController < ApplicationController
    before_action :prepare_form_data
    def create
        @role = Role.new(role_params)
 
        if @role.save
            redirect_to @role
        else
            render 'new'
        end
    end
    
    def destroy
        @role = Role.find(params[:id])
        @role.destroy
    
        redirect_to roles_path
    end
    
    def edit
        @role = Role.find(params[:id])
    end

    def index
        @roles = Role.all
    end
    def new
        @role = Role.new
    end
    def show
        @role = Role.find(params[:id])
    end
    def update
        @role = Role.find(params[:id])
       
        if @role.update(role_params)
          redirect_to @role
        else
          render 'edit'
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
    def role_params
        params.require(:role).permit(:name)
    end
end
