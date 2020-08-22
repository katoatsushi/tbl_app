class COriginsController < ApplicationController
  before_action :set_c_origin, only: [:show, :edit, :update, :destroy]

  def index
    @c_origins = COrigin.all
  end

  def show
  end

  def new
    @c_origin = COrigin.new
  end

  def edit
  end

  def create
    @c_origin = COrigin.new(c_origin_params)
    id = params[:c_main_info_id]
    @c_origin.c_main_info_id = id
    if @c_origin.save
      redirect_to c_main_infos_path
    else
      redirect_to c_main_infos_path
    end
  end

  def update
  end


  def destroy
    @c_origin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_origin
      @c_origin = COrigin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_origin_params
      params.require(:c_origin)
      .permit(
        :origin,
        :origin_company,
        :origin_postal_code,
        :origin_place,
        :origin_president,
        :worker_dispatch_permit_number,

        :manu_ope_to_department,
        :manu_ope_to_position,
        :manu_ope_to_name,
        :manu_ope_to_tel,
        :complaint_department_from,
        :complaint_position_from,
        :complaint_name_from,
        :complaint_tel_from,

        :c_main_info_id
    )
    end
end



