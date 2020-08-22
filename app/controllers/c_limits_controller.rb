class CLimitsController < ApplicationController
  before_action :set_c_limit, only: [:show, :edit, :update, :destroy]

  # GET /c_limits
  # GET /c_limits.json
  def index
    @c_limits = CLimit.all
  end

  # GET /c_limits/1
  # GET /c_limits/1.json
  def show
  end

  # GET /c_limits/new
  def new
    @c_limit = CLimit.new
  end

  # GET /c_limits/1/edit
  def edit
  end

  # POST /c_limits
  # POST /c_limits.json
  def create
    @c_limit = CLimit.new(c_limit_params)
    id = params[:c_main_info_id]
    @c_limit.c_main_info_id = id
    if @c_limit.save
      redirect_to c_main_infos_path
    else
      redirect_to c_main_infos_path
    end
  end


  # PATCH/PUT /c_limits/1
  # PATCH/PUT /c_limits/1.json
  def update
  end

  # DELETE /c_limits/1
  # DELETE /c_limits/1.json
  def destroy
    @c_limit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_limit
      @c_limit = CLimit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_limit_params
      params.require(:c_limit)
      .permit(
        # 抵触日単位 
        :conflict_days,
        # 事業所単位抵触日  
        :business_unit_unit_conflict_day,
        # 組織単位の抵触日組織単位（課）の配属日から3年
        :three_years_later,
        :c_info_id
    )
    end
end
