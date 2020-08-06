class CMainInfosController < ApplicationController
  before_action :set_c_main_info, only: [:show, :edit, :update, :destroy]
  def top
  end

  def index
    @c_main_infos = CMainInfo.all
  end


  def show
     @detail = @c_main_info.c_detail #個別契約内容
     @time = @c_main_info.c_time #就業日・時間
     @other = @c_main_info.c_other #その他就業条件
     @welfare = @c_main_info.c_welfare #福利厚生
     @origin = @c_main_info.c_origin # 派遣元情報
  end

  def edit
  end  

  def new
    @c_main_info = CMainInfo.new
    @info_id = params[:c_main_info_id]
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
        :contract_id,
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
