class DatstatusesController < ApplicationController
    before_action :prepare_form_data
  def index
      @datstatuses = Datstatus.order("name").page(params[:page]).per(20)
  end

  def show
      @datstatus = Datstatus.find(params[:id])
  rescue ActiveRecord::RecordNotFound
      redirect_to(datstatuses_path, :notice => 'Record not found')

  end

  def new
      @datstatus = Datstatus.new
  end

  def edit
      @datstatus = Datstatus.find(params[:id])
  end

  def create
      /raise params.inspect/
      @datstatus = Datstatus.new(datstatus_params)
      
      if @datstatus.save
          redirect_to @status
      else
          render 'new'
      end
  end

  def update
      @datstatus = Datstatus.find(params[:id])
      if @datstatus.update(datstatus_params)
        redirect_to @datstatus
      else
        render 'edit'
      end
  end

  def destroy
      @datstatus = Datstatus.find(params[:id])
      @datstatus.destroy    
      redirect_to datstatuses_path
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
  def datstatus_params
    params.require(:datstatus).permit(:name, :abbreviation, :descStatus)
  end
end
