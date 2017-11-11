class DatfilesController < ApplicationController
    before_action :prepare_collections
    def index
        @datfile = Datfile.all
    end

    def show
        @datfile = Datfile.find(params[:id])
    end

    def new
        @datfile = Datfile.new
    end

    def edit
        @datfile = Datfile.find(params[:id])
    end

    def create
        @datfile = Datfile.new(datfile_params)
        
        if @datfile.save
            redirect_to @datfile
        else
            render 'new'
        end
    end

    def update
        @datfile = Datfile.find(params[:id])
       
        if @datfile.update(datfile_params)
          redirect_to @datfile
        else
          render 'edit'
        end
    end

    def destroy
        @datfile = Datfile.find(params[:id])
        @datfile.destroy    
        redirect_to datfile_path
    end
    
    private
    def datfile_params
      params.require(:datfile).permit(:name, :desc)
    end

    def prepare_collections
        @collection_type=CollectionType.all
      end
end
