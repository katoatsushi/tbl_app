class LaborManagementAgreementsController < ApplicationController
  before_action :set_labor_management_agreement, only: [:show, :edit, :update, :destroy]

  # GET /labor_management_agreements
  # GET /labor_management_agreements.json
  def index
    @labor_management_agreements = LaborManagementAgreement.all
  end

  # GET /labor_management_agreements/1
  # GET /labor_management_agreements/1.json
  def show
  end

  # GET /labor_management_agreements/new
  def new
    @labor_management_agreement = LaborManagementAgreement.new
  end

  # GET /labor_management_agreements/1/edit
  def edit
  end

  # POST /labor_management_agreements
  # POST /labor_management_agreements.json
  def create
    @labor_management_agreement = LaborManagementAgreement.new(labor_management_agreement_params)
    id = params[:employee_info_id]
    @labor_management_agreement.employee_info_id = id    
    if  @labor_management_agreement.save
      redirect_to root_path
    else
      redirect_to root_path
    end 
  end

  # PATCH/PUT /labor_management_agreements/1
  # PATCH/PUT /labor_management_agreements/1.json
  def update
  end

  # DELETE /labor_management_agreements/1
  # DELETE /labor_management_agreements/1.json
  def destroy
    @labor_management_agreement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labor_management_agreement
      @labor_management_agreement = LaborManagementAgreement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def labor_management_agreement_params
      params.require(:labor_management_agreement)
      .permit(
        #協定対象派遣労働者であるか否か  
        :agreement_check,
        #労使協定有効期限開始 
        :labor_start,
        #労使協定有効期限終了 
        :labor_fin,
        :employee_info_id   
        )
    end
end
