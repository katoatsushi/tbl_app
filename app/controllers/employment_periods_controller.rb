class EmploymentPeriodsController < ApplicationController
  before_action :set_employment_period, only: [:show, :edit, :update, :destroy]

  # GET /employment_periods
  # GET /employment_periods.json
  def index
    @employment_periods = EmploymentPeriod.all
  end

  # GET /employment_periods/1
  # GET /employment_periods/1.json
  def show
  end

  # GET /employment_periods/new
  def new
    @employment_period = EmploymentPeriod.new
  end

  # GET /employment_periods/1/edit
  def edit
  end

  # POST /employment_periods
  # POST /employment_periods.json
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

  # PATCH/PUT /employment_periods/1
  # PATCH/PUT /employment_periods/1.json
  def update
  end

  # DELETE /employment_periods/1
  # DELETE /employment_periods/1.json
  def destroy
    @employment_period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_period
      @employment_period = EmploymentPeriod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
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
