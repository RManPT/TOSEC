class ReleasesController < ApplicationController
    before_action :prepare_dependencies
    def create
        @release = Release.new(release_params)
        
        if @release.save
            @list.each do |list|
                @release.datfiles << list
            end
            Datfile.where(:datstatus_id => '3').update_all("datstatus_id = '4'")
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
    def release_params
      params.require(:release).permit(:descRelease)
    end
    def prepare_dependencies
        @list = Datfile.where( :datstatus_id => '3' )
    end

end
