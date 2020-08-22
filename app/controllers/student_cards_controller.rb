class StudentCardsController < ApplicationController
  before_action :set_student_card, only: [:show, :edit, :update, :destroy]

  # GET /student_cards
  # GET /student_cards.json
  def index
    @student_cards = StudentCard.all
  end

  # GET /student_cards/1
  # GET /student_cards/1.json
  def show
  end

  # GET /student_cards/new
  def new
    @student_card = StudentCard.new
  end

  # GET /student_cards/1/edit
  def edit
  end

  # POST /student_cards
  # POST /student_cards.json
  def create
    @student_card = StudentCard.new(student_card_params)
    id = params[:employee_info_id]
    @student_card.employee_info_id = id    
    if  @student_card.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end 
  end

  # PATCH/PUT /student_cards/1
  # PATCH/PUT /student_cards/1.json
  def update
  end

  # DELETE /student_cards/1
  # DELETE /student_cards/1.json
  def destroy
    @student_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_card
      @student_card = StudentCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_card_params
      params.require(:student_card)
      .permit(
          #在学中の学校 
          :school_name,
          #学籍№  
          :student_id,
          #学生証写し  
          :student_card_copy,
          #学生証有効期限  
          :student_limit,
          #学生証有効期限残り  
          :student_last,
          :employee_info_id 
        )
    end
end
