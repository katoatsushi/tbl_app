class CDetailsController < ApplicationController
  before_action :set_c_detail, only: [:show, :edit, :update, :destroy]

  # GET /c_details
  # GET /c_details.json
  def index
    @c_details = CDetail.all
  end

  # GET /c_details/1
  # GET /c_details/1.json
  def show
  end

  # GET /c_details/new
  def new
    @c_detail = CDetail.new
  end

  # GET /c_details/1/edit
  def edit
  end

  # POST /c_details
  # POST /c_details.json
  def create
    @c_detail = CDetail.new(c_detail_params)
    id = params[:c_main_info_id]
    @c_detail.c_main_info_id = id    
    if  @c_detail.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /c_details/1
  # PATCH/PUT /c_details/1.json
  def update
  end

  # DELETE /c_details/1
  # DELETE /c_details/1.json
  def destroy
    @c_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_detail
      @c_detail = CDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_detail_params
      params.require(:c_detail)
      .permit(
        :treatment_decision_method,
        :name,
        :place,
        :tel,
        :factory_name,
        :factory_place,
        :factory_tel,
        :factory_department,
        :factory_department_tel,
        :party_num,
        :party_position,
        :command_and_order_department,
        :command_and_order_position,
        :command_and_order_name,
        :command_and_order_tel,
        :manu_ope_from_department,
        :manu_ope_from_position,
        :manu_ope_from_name,
        :manu_ope_from_tel,
        :complaint_department_to,
        :complaint_position_to,
        :complaint_name_to,
        :complaint_tel_to,
        :customer_postal_code,
        :customer_place,
        :customer_position,
        :customer_name,
        :work_detail,
        :c_main_info_id
        )
    end
end
