class EmploymentPeriodsController < ApplicationController
  before_action :set_employment_period, only: [:show, :edit, :update, :destroy]

  def index
    @employment_periods = EmploymentPeriod.all
  end

  def show
  end

  def new
    @employment_period = EmploymentPeriod.new
  end

  def edit
  end

  def create
    @employment_period = EmploymentPeriod.new(employment_period_params)
    id = params[:employee_info_id]
    @employment_period.employee_info_id = id    
    if  @employment_period.save
      redirect_to root_path
    else
      redirect_to root_path
    end  
  end

  def update
  end

  def destroy
    @employment_period.destroy
  end

  private
    def set_employment_period
      @employment_period = EmploymentPeriod.find(params[:id])
    end

    def employment_period_params
      params.require(:employment_period)
      .permit(
        #開始 
        :start,
        #終了 
        :finish,
        :employee_info_id 
        )
    end
end
