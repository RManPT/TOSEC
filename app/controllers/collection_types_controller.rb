class CollectionTypesController < ApplicationController
    def index
        @collection_type = CollectionType.order("name").page(params[:page]).per(20)
    end

    def show
        @collection_type = CollectionType.find(params[:id])
    end

    def new
        @collection_type = CollectionType.new
    end

    def edit
        @collection_type = CollectionType.find(params[:id])
    end

    def create
        @collection_type = CollectionType.new(collection_type_params)
        
        if @collection_type.save
            redirect_to @collection_type
        else
            render 'new'
        end
    end

    def update
        @collection_type = CollectionType.find(params[:id])
       
        if @collection_type.update(collection_type_params)
          redirect_to @collection_type
        else
          render 'edit'
        end
    end

    def destroy
        @collection_type = CollectionType.find(params[:id])
        @collection_type.destroy    
        redirect_to collection_types_path
    end
    
    private
    def collection_type_params
      params.require(:collection_type).permit(:name, :desc)
    end
end

