class LaborStandardsActsController < ApplicationController
  before_action :set_labor_standards_act, only: [:show, :edit, :update, :destroy]

  def index
    @labor_standards_acts = LaborStandardsAct.all
  end

  def show
  end

  def new
    @labor_standards_act = LaborStandardsAct.new
  end

  def edit
  end

  def create
    @labor_standards_act = LaborStandardsAct.new(labor_standards_act_params)
    id = params[:employee_info_id]
    @labor_standards_act.employee_info_id = id    
    if @labor_standards_act.save
      redirect_to root_path
    else
      redirect_to root_path
    end 
  end

  def update
  end

  def destroy
    @labor_standards_act.destroy
  end

  private
    def set_labor_standards_act
      @labor_standards_act = LaborStandardsAct.find(params[:id])
    end

    def labor_standards_act_params
      params.require(:labor_standards_act)
      .permit(
        #一日の時間外労働最大 
        :max_work_day,
        #一月の時間外労働最大 
        :max_work_month,
        #一年の時間外労働最大 
        :max_work_year,
        #休日出勤の回数  
        :holiday_work_time,
        #特別条項 
        :detail,
        #一日の時間外労働最大(特)  
        :max_work_day_special,
        #一月の時間外労働最大(特)  
        :max_work_month_special,
        #一年の時間外労働最大(特)  
        :max_work_year_special,
        #延長回数 
        :extension_time,
        :employee_info_id 
    )
    end
end
