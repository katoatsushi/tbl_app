class FamilysController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]

  # GET /families
  # GET /families.json
  def index
    @families = Family.all
  end

  # GET /families/1
  # GET /families/1.json
  def show
  end

  # GET /families/new
  def new
    @family = Family.new
  end

  # GET /families/1/edit
  def edit
  end

  # POST /families
  # POST /families.json
  def create
    @family = Family.new(family_params)
    id = params[:employee_info_id]
    @family.employee_info_id = id    
    if  @family.save
      redirect_to root_path
    else
      redirect_to root_path
    end     
  end

  # PATCH/PUT /families/1
  # PATCH/PUT /families/1.json
  def update
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family
      @family = Family.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def family_params
      params.require(:family)
      .permit(
        #扶養人数 
        :family_number,
        #配偶者(有・無) 
        :spouse,
        #配偶者の扶養義務(有・無)  
        :obligation,
        :employee_info_id 
        )
    end
end
