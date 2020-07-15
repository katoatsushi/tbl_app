class EmployeeInfosController < ApplicationController
  before_action :set_employee_info, only: [:show, :edit, :update, :destroy]

  # GET /employee_infos
  # GET /employee_infos.json
  def index
    @employee_infos = EmployeeInfo.all
  end

  # GET /employee_infos/1
  # GET /employee_infos/1.json
  def show
  end

  # GET /employee_infos/new
  def new
    @employee_info = EmployeeInfo.new
  end

  # GET /employee_infos/1/edit
  def edit
  end

  # POST /employee_infos
  # POST /employee_infos.json
  def create
    @employee_info = EmployeeInfo.new(employee_info_params)
    if @employee_info.save
      redirect_to root_path
    else
      redirect_to root_path
    end    
  end

  # PATCH/PUT /employee_infos/1
  # PATCH/PUT /employee_infos/1.json
  def update
  end

  # DELETE /employee_infos/1
  # DELETE /employee_infos/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_info
      @employee_info = EmployeeInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_info_params
     params.require(:employee_info)
      .permit(
        :employee_id,
        :employee_last_id,
        :first_name,
        :last_name,
        :first_name_kana,
        :last_name_kana,
        :sex,
        :birth,
        :age,
        :postal_code,
        :address,
        :tel_first,
        :tel_second,
        :email_first,
        :email_last
    )
    end
end
