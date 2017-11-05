class ReleaseTypesController < ApplicationController
    def index
        @release_type = ReleaseType.all
    end

    def show
        @release_type = ReleaseType.find(params[:id])
    end

    def new
        @release_type = ReleaseType.new
    end

    def edit
        @release_type = ReleaseType.find(params[:id])
    end

    def create
        @release_type = ReleaseType.new(release_type_params)
        
        if @release_type.save
            redirect_to @release_type
        else
            render 'new'
        end
    end

    def update
        @release_type = ReleaseType.find(params[:id])
       
        if @release_type.update(release_type_params)
          redirect_to @release_type
        else
          render 'edit'
        end
    end

    def destroy
        @release_type = ReleaseType.find(params[:id])
        @release_type.destroy    
        redirect_to release_types_path
    end
    
    private
    def release_type_params
      params.require(:release_type).permit(:name, :desc)
    end
end

