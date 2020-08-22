class CWelfaresController < ApplicationController
  before_action :set_c_welfare, only: [:show, :edit, :update, :destroy]

  # GET /c_welfares
  # GET /c_welfares.json
  def index
    @c_welfares = CWelfare.all
  end

  # GET /c_welfares/1
  # GET /c_welfares/1.json
  def show
  end

  # GET /c_welfares/new
  def new
    @c_welfare = CWelfare.new
  end

  # GET /c_welfares/1/edit
  def edit
  end

  # POST /c_welfares
  # POST /c_welfares.json
  def create
    @c_welfare = CWelfare.new(c_welfare_params)
    id = params[:c_main_info_id]
    @c_welfare.c_main_info_id = id
    if @c_welfare.save
      redirect_to c_main_infos_path
    else
      redirect_to c_main_infos_path
    end
  end

  # PATCH/PUT /c_welfares/1
  # PATCH/PUT /c_welfares/1.json
  def update
  end

  # DELETE /c_welfares/1
  # DELETE /c_welfares/1.json
  def destroy
    @c_welfare.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_welfare
      @c_welfare = CWelfare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_welfare_params
     params.require(:c_welfare)
      .permit(
        :uniform,    
        :shoes,
        :dining_room,
        :changing_room,              
        :c_main_info_id
    )
    end
end
