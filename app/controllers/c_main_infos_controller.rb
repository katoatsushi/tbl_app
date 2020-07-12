class CMainInfosController < ApplicationController
  before_action :set_c_main_info, only: [:show, :edit, :update, :destroy]

  def index
    @c_main_infos = CMainInfo.all
  end


  def show
  end

  def edit
  end  

  def new
    @c_main_info = CMainInfo.new
  end

  def create
    @c_main_info = CMainInfo.new(c_main_info_params)
    if  @c_main_info.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def update
    
  end

  def destroy
    @c_main_info.destroy

  end

  private
    def set_c_main_info
      @c_main_info = CMainInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_main_info_params
      params.require(:c_main_info)
      .permit(
        :uuid,
        :dispatch_personnel,
        :year,
        :month,
        :day,
        :fin_date,
        :contract_start,
        :contract_finish
        )
    end
end
