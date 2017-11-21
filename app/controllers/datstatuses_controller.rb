class DatstatusesController < ApplicationController

  def index
      @statuses = Datstatus.all
  end

  def show
      @status = Datstatus.find(params[:id])
  rescue ActiveRecord::RecordNotFound
      redirect_to(datstatuses_path, :notice => 'Record not found')

  end

  def new
      @status = Datstatus.new
  end

  def edit
      @status = Datstatus.find(params[:id])
  end

  def create
      /raise params.inspect/
      @status = Datstatus.new(status_params)
      
      if @status.save
          redirect_to @status
      else
          render 'new'
      end
  end

  def update
      @status = Datstatus.find(params[:id])
      if @status.update(status_params)
        redirect_to @status
      else
        render 'edit'
      end
  end

  def destroy
      @status = Datstatus.find(params[:id])
      @status.destroy    
      redirect_to datstatuses_path
  end
  
  private
  def status_params
    params.require(:datstatus).permit(:name, :abbreviation, :descStatus)
  end
end
