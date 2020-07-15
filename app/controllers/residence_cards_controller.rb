class ResidenceCardsController < ApplicationController
  before_action :set_residence_card, only: [:show, :edit, :update, :destroy]

  # GET /residence_cards
  # GET /residence_cards.json
  def index
    @residence_cards = ResidenceCard.all
  end

  # GET /residence_cards/1
  # GET /residence_cards/1.json
  def show
  end

  # GET /residence_cards/new
  def new
    @residence_card = ResidenceCard.new
  end

  # GET /residence_cards/1/edit
  def edit
  end

  # POST /residence_cards
  # POST /residence_cards.json
  def create
    @residence_card = ResidenceCard.new(residence_card_params)
    id = params[:employee_info_id]
    @residence_card.employee_info_id = id    
    if  @residence_card.save
      redirect_to root_path
    else
      redirect_to root_path
    end 
  end

  # PATCH/PUT /residence_cards/1
  # PATCH/PUT /residence_cards/1.json
  def update
  end

  # DELETE /residence_cards/1
  # DELETE /residence_cards/1.json
  def destroy
    @residence_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residence_card
      @residence_card = ResidenceCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def residence_card_params
      params.require(:residence_card)
      .permit(
        #写し（有・無）  
        :copy,
        #番号№  
        :resi_id,
        #国籍 
        :citizenship,
        #在留資格 
        :residence,
        #在留期限 
        :limit,
        #更新中確認  
        :update_check,
        :employee_info_id
        )
    end
end
