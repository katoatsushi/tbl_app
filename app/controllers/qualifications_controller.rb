class QualificationsController < ApplicationController
  before_action :set_qualification, only: [:show, :edit, :update, :destroy]

  # GET /qualifications
  # GET /qualifications.json
  def index
    @qualifications = Qualification.all
  end

  # GET /qualifications/1
  # GET /qualifications/1.json
  def show
  end

  # GET /qualifications/new
  def new
    @qualification = Qualification.new
  end

  # GET /qualifications/1/edit
  def edit
  end

  # POST /qualifications
  # POST /qualifications.json
  def create
    @qualification = Qualification.new(qualification_params)
    id = params[:employee_info_id]
    @qualification.employee_info_id = id    
    if  @qualification.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end 
  end

  # PATCH/PUT /qualifications/1
  # PATCH/PUT /qualifications/1.json
  def update
  end

  # DELETE /qualifications/1
  # DELETE /qualifications/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualification
      @qualification = Qualification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qualification_params
      params.require(:qualification)
      .permit(
          # 取得年 
          :year,
          # 取得月 
          :month,
          # 取得資格  
          :name,
          :employee_info_id 
        )
    end
end
