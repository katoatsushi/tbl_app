class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  # GET /educations
  # GET /educations.json
  def index
    @educations = Education.all
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
  end

  # GET /educations/new
  def new
    @education = Education.new
  end

  # GET /educations/1/edit
  def edit
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = Education.new(education_params)
    id = params[:employee_info_id]
    @education.employee_info_id = id    
    if  @education.save
      redirect_to root_path
    else
      redirect_to root_path
    end     
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def education_params
      params.require(:education)
      .permit(
        #学歴年  
        :edu_year,
        #学歴月  
        :edu_month,
        #学校名  
        :edu_day,
        #在学中/卒業 
        :status,
        :employee_info_id 
        )
    end
end
