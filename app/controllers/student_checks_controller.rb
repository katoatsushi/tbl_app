class StudentChecksController < ApplicationController
  before_action :set_student_check, only: [:show, :edit, :update, :destroy]

  # GET /student_checks
  # GET /student_checks.json
  def index
    @student_checks = StudentCheck.all
  end

  # GET /student_checks/1
  # GET /student_checks/1.json
  def show
  end

  # GET /student_checks/new
  def new
    @student_check = StudentCheck.new
  end

  # GET /student_checks/1/edit
  def edit
  end

  # POST /student_checks
  # POST /student_checks.json
  def create
    @student_check = StudentCheck.new(student_check_params)
    id = params[:employee_info_id]
    @student_check.employee_info_id = id    
    if  @student_check.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end  
  end

  # PATCH/PUT /student_checks/1
  # PATCH/PUT /student_checks/1.json
  def update
  end

  # DELETE /student_checks/1
  # DELETE /student_checks/1.json
  def destroy
    @student_check.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_check
      @student_check = StudentCheck.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_check_params
      params.require(:student_check)
      .permit(
        #全日制（○・―） 
        :all,
        #夜間制（○・―） 
        :night,
        #通信制（○・―） 
        :remote,
        :employee_info_id 
        )
    end
end
