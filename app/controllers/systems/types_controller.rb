class Systems::TypesController < ApplicationController
  def new
    @type= SystemsType.new
    
end
def index
    @types = SystemsType.all
  end
def show
    @type = SystemsType.find(params[:id])
rescue ActiveRecord::RecordNotFound
    redirect_to(systems_types_path, :notice => 'Record not found')
end

def create
    @type = SystemsType.new(systems_type_params)
    
    if @type.save
        redirect_to @type
      else
        render 'new'
      end
end
def edit
    @type = SystemsType.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to(system_type_path, :notice => 'Record not found')
  end
def update
    @type = SystemsType.find(params[:id])
   
    if @type.update(systems_type_params)
      redirect_to @type
    else
      render 'edit'
    end
  end

def destroy
    @type = SystemsType.find(params[:id])
    @type.destroy

    redirect_to systems_types_path
end

private
def systems_type_params
  params.require(:systems_type).permit(:name)
end

end
