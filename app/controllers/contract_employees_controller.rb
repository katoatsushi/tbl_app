class ContractEmployeesController < ApplicationController
  before_action :set_contract_employee, only: [:show, :edit, :update, :destroy]

  # GET /contract_employees
  # GET /contract_employees.json
  def index
    #@contract_employees = ContractEmployee.all
    @contract_employees = ContractEmployee.where(c_main_info_id: params[:c_main_info_id])
    @main_info = CMainInfo.find(params[:c_main_info_id])
  end
  # GET /contract_employees/1
  # GET /contract_employees/1.json
  def show
  end

  # GET /contract_employees/new
  def new
    @contract_employee = ContractEmployee.new
  end

  # GET /contract_employees/1/edit
  def edit
  end

  # POST /contract_employees
  # POST /contract_employees.json
  def create
    @contract_employee = ContractEmployee.new(contract_employee_params)
    @contract_employee.c_main_info_id = params[:c_main_info_id]
    @contract_employee.employee_info_id = params[:contract_employee][:employee_info]   
    binding.pry
    if  @contract_employee.save
      redirect_to root_path
    else
      redirect_to root_path
    end 
  end

  # PATCH/PUT /contract_employees/1
  # PATCH/PUT /contract_employees/1.json
  def update
  end

  # DELETE /contract_employees/1
  # DELETE /contract_employees/1.json
  def destroy
    @contract_employee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_employee
      @contract_employee = ContractEmployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_employee_params
      params.require(:contract_employee)
      .permit(
        # 従業員コードNo
        :c_main_info_id,
        # 個別契約管理番号
        :employee_info_id,
        # 支払単価
        :per_hour,
        # 残業時給
        :out_of_hour,
        # 深夜割増時給
        :night,
        # 法定外休労働時給
        :off_work,
        # 法定休日労働時給
        :on_legal_holiday,
        # 時間外割増率
        :out_of_hour_rate,
        # 深夜割増率
        :night_rate,
        # 休日割増率
        :off_work_rate,
        # 法定休日割増率
        :on_legal_holiday_rate,
        #  通勤手当/日 
        :commuting_allowance,
        # 給料日
        :pay_day,

        # 健康保険未加入理由
        :health_not_sub,
        # 厚生年金保険未加入理由
        :em_health_not_sub,
        # 雇用保険未加入理由
        :em_not_sub,

        # 入職（予定）日
        :start_job_day,
        # 雇入通知書兼就業条件明示書の雇用期間欄開始日
        :syaty_job,
        # 明示書発行日
        :certificate,
        # 雇入通知書兼就業条件明示書の雇用期間欄終了日
        :finish_day,
        # 雇用形態
        :emp_style,
        # 更新（有無）
        :update_check,
        # 入社前教育日付
        :education,
        # 時間
        :edu_time,
        # 入社前教育
        :edu_detail,
        # 入社時教育日付
        :education_b,
        # 時間
        :edu_time_b,
        # 入社時教育
        :edu_detail_b,
        # 時間
        :edu_time_c,
        # 入社時安全教育
        :edu_safety,

        #  雇用安定措置の内容
        :esm,
        # 依頼日時
        :esm_date,
        # 依頼方法
        :esm_way,
        # 回答日時
        :answer_date,
        # 回答
        :answer,
        # 紹介派遣先
        :referral_destination,
        # その他の措置
        :other_measure,
        # 備考（配属日、異動日、終了日などの特記事項を記入）
        :other_detail
        )
    end

end