class WorkInfosController < ApplicationController
  before_action :set_work_info, only: [:show, :edit, :update, :destroy]

  # GET /work_infos
  # GET /work_infos.json
  def index
    @work_infos = WorkInfo.all
  end

  # GET /work_infos/1
  # GET /work_infos/1.json
  def show
  end

  # GET /work_infos/new
  def new
    @work_info = WorkInfo.new
  end

  # GET /work_infos/1/edit
  def edit
  end

  # POST /work_infos
  # POST /work_infos.json
  def create
    @work_info = WorkInfo.new(work_info_params)
    id = params[:employee_info_id]
    @work_info.employee_info_id = id    
    if  @work_info.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end 
  end

  # PATCH/PUT /work_infos/1
  # PATCH/PUT /work_infos/1.json
  def update
  end

  # DELETE /work_infos/1
  # DELETE /work_infos/1.json
  def destroy
    @work_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_info
      @work_info = WorkInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_info_params
     params.require(:work_info)
      .permit(
          # 入社区分  
          :work_style,
          #入社日  
          :start_day,
          #変更日  
          :transfer_day,
          #配属先  
          :work_department,
          #業務の種類  
          :work_type,
          #税収区分 
          :tax,
          :employee_info_id 
    )
    end
end
