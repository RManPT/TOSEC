class ReleasesController < ApplicationController
    before_action :prepare_form_data
    def create
        @release = Release.new(release_params)
        
        if @release.save
            redirect_to @release
        else
            render 'new'
        end
    end
    def destroy
        @release = Release.find(params[:id])
        @release.destroy
       
        redirect_to releases_path
    end
    def edit
        @release = Release.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to(releases_path, :notice => 'Record not found')
    end
    def index
        @releases = Release.order("descRelease").page(params[:page]).per(20)
    end
    def new
        @release = Release.new
    end
    def update
        @release = Release.find(params[:id])
       
        if @release.update(release_params)
          redirect_to @release
        else
          render 'edit'
        end
    end
    def show
        @release = Release.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to(releases_path, :notice => 'Record not found')
    end
    private
    def prepare_form_data
        if(user_signed_in?)
            @links = Grole.where(user_id: current_user.id).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        end
    end
    def release_params
      params.require(:release).permit(:descRelease)
    end
end
