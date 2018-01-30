class RoutesController < ApplicationController
    before_action :prepare_form_data
    def create
        @route = Route.new(route_params)
 
        if @route.save
            redirect_to @route
        else
            render 'new'
        end
    end
    
    def destroy
        @route = Route.find(params[:id])
        @route.destroy
    
        redirect_to routes_path
    end
    
    def edit
        @route = Route.find(params[:id])
    end

    def index
        @routes = Route.all
    end
    def new
        @route = Route.new
    end
    def show
        @route = Route.find(params[:id])
    end
    def update
        @route = Route.find(params[:id])
       
        if @route.update(route_params)
          redirect_to @route
        else
          render 'edit'
        end
      end
private
    def prepare_form_data

        if(user_signed_in?)
        @links = Grole.where(user_id: current_user.id)
        end
    end
    def route_params
        params.require(:route).permit(:name, :path, :priority)
    end
end
