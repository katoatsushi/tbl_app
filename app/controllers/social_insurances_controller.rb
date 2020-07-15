class SocialInsurancesController < ApplicationController
  before_action :set_social_insurance, only: [:show, :edit, :update, :destroy]

  def index
    @social_insurances = SocialInsurance.all
  end

  def show
  end

  def new
    @social_insurance = SocialInsurance.new
  end

  def edit
  end

  def create
    @social_insurance = SocialInsurance.new(social_insurance_params)
    id = params[:employee_info_id]
    @social_insurance.employee_info_id = id 
    binding.pry 
    if @social_insurance.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
    @social_insurance.destroy
  end

  private
    def set_social_insurance
      @social_insurance = SocialInsurance.find(params[:id])
    end

    def social_insurance_params
      params.require(:social_insurance)
      .permit(
        #雇用保険被保険者番号 
        :employment_insurance_number,
        #雇用保険加入年月日  
        :employment_insurance_start,
        #雇用保険喪失年月日  
        :employment_insurance_fin,
        #健康保険・厚生年金保険番号  
        :insurance_number,
        #健康保険・厚生年金保険加入年月日 
        :insurance_start,
        #健康保険・厚生年金保険喪失年月日 
        :insurance_fin,
        #異動歴・退職年月日と事由・死亡年月日と原因  
        :insurance_others,
        #備考 
        :details,
        :employee_info_id
        )      
    end
end
