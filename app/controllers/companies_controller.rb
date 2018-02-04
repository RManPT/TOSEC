class CompaniesController < ApplicationController
    before_action :authenticate_user!
    before_action :prepare_form_data
    def index
        @companies = Company.order("title").page(params[:page]).per(20)
    end 
    
    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def edit
        @company = Company.find(params[:id])
    end

    def create
        @company = Company.new(company_params)

        if @company.save
            redirect_to @company
          else
            render 'new'
        end
    end

    def update
        @company = Company.find(params[:id])
        
         if @company.update(company_params)
           redirect_to @company
         else
           render 'edit'
         end
    end
       
    def destroy
        @company = Company.find(params[:id])
        @company.destroy
       
        redirect_to companies_path
    end

    private
    def company_params
        params.require(:company).permit(:title, :text, :image)
    end
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
end
