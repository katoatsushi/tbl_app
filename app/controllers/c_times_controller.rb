class CTimesController < ApplicationController
  before_action :set_c_time, only: [:show, :edit, :update, :destroy]

  # GET /c_times
  # GET /c_times.json
  def index
    @c_times = CTime.all
  end

  # GET /c_times/1
  # GET /c_times/1.json
  def show
  end

  # GET /c_times/new
  def new
    @c_time = CTime.new
  end

  # GET /c_times/1/edit
  def edit
  end

  # POST /c_times
  # POST /c_times.json
  def create
    @c_time = CTime.new(c_time_params)
    id = params[:c_main_info_id]
    @c_time.c_main_info_id = id
    if  @c_time.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /c_times/1
  # PATCH/PUT /c_times/1.json
  def update

  end

  # DELETE /c_times/1
  # DELETE /c_times/1.json
  def destroy
    @c_time.destroy

  end

  private
    def set_c_time
      @c_time = CTime.find(params[:id])
    end

    def c_time_params
      params.require(:c_time)
      .permit(
      :work_start_day,
      :out_of_work,
      :start_date,
      :work_total_time,
      :per_min,
      :work_type_bool,
      :work_change,
      # シフトA名称
      :work_range_a,
      :regular_work_range_a,
      :break_time_a,
      :total_break_time_a,
      # シフトB名称
      :work_range_b,
      :regular_work_range_b,
      :break_time_b,
      :total_break_time_b,
      # シフトC名称
      :work_range_c,
      :regular_work_range_c,
      :break_time_c,
      :total_break_time_c,
      # シフトD名称
      :work_range_d,
      :regular_work_range_d,
      :break_time_d,
      :total_break_time_d,
      # シフトE名称
      :work_range_e,
      :regular_work_range_e,
      :break_time_e,
      :total_break_time_e,
      # 請求単価
      :overtime_unit_price,
      :legal_holiday_unit_price,
      :midnight_premium_unit_price,
      :deadine,
      :date_of_payment,
      :rounding,
      :c_main_info_id
      )
    end
end
