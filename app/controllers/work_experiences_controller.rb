class WorkExperiencesController < ApplicationController
  before_action :set_work_experience, only: [:show, :edit, :update, :destroy]

  # GET /work_experiences
  # GET /work_experiences.json
  def index
    @work_experiences = WorkExperience.all
  end

  # GET /work_experiences/1
  # GET /work_experiences/1.json
  def show
  end

  # GET /work_experiences/new
  def new
    @work_experience = WorkExperience.new
  end

  # GET /work_experiences/1/edit
  def edit
  end

  # POST /work_experiences
  # POST /work_experiences.json
  def create
    @work_experience = WorkExperience.new(work_experience_params)
    id = params[:employee_info_id]
    @work_experience.employee_info_id = id    
    if  @work_experience.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end 
  end

  # PATCH/PUT /work_experiences/1
  # PATCH/PUT /work_experiences/1.json
  def update
  end

  # DELETE /work_experiences/1
  # DELETE /work_experiences/1.json
  def destroy
    @work_experience.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_experience
      @work_experience = WorkExperience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_experience_params
      params.require(:work_experience)
      .permit(
        #職歴年   
        :work_year,
        #職歴月  
        :work_month,
        #就労先名（派遣の場合は派遣元社名を入力の事） 
        :work_name,
        :employee_info_id 
        )
    end
end
