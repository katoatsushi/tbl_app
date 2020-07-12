class COthersController < ApplicationController
  before_action :set_c_other, only: [:show, :edit, :update, :destroy]

  # GET /c_others
  # GET /c_others.json
  def index
    @c_others = COther.all
  end

  # GET /c_others/1
  # GET /c_others/1.json
  def show
  end

  # GET /c_others/new
  def new
    @c_other = COther.new
  end

  # GET /c_others/1/edit
  def edit
  end

  def create
    @c_other = COther.new(c_other_params)
    id = params[:c_main_info_id]
    @c_other.c_main_info_id = id
    if  @c_other.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
    @c_other.destroy
  end

  private
    def set_c_other
      @c_other = COther.find(params[:id])
    end

    def c_other_params
     params.require(:c_other)
      .permit(
      :responsibility,
      :responsibility_proportion,
      :limit_of_temporary_worker,
      :c_main_info_id
    )
    end
end
