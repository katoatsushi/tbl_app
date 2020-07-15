class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: [:show, :edit, :update, :destroy]

  # GET /bank_accounts
  # GET /bank_accounts.json
  def index
    @bank_accounts = BankAccount.all
  end

  # GET /bank_accounts/1
  # GET /bank_accounts/1.json
  def show
  end

  # GET /bank_accounts/new
  def new
    @bank_account = BankAccount.new
  end

  # GET /bank_accounts/1/edit
  def edit
  end

  # POST /bank_accounts
  # POST /bank_accounts.json
  def create
    @bank_account = BankAccount.new(bank_account_params)
    id = params[:employee_info_id]
    @bank_account.employee_info_id = id    
    if  @bank_account.save
      redirect_to root_path
    else
      redirect_to root_path
    end    
  end

  # PATCH/PUT /bank_accounts/1
  # PATCH/PUT /bank_accounts/1.json
  def update
  end

  # DELETE /bank_accounts/1
  # DELETE /bank_accounts/1.json
  def destroy
    @bank_account.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_account
      @bank_account = BankAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_account_params
      params.require(:bank_account)
      .permit(
        # 銀行名 
        :bank_name,
        #銀行 
        :bank_name_other,
        #支店名  
        :branch_name,
        # 営業所 
        :sales_office,
        # ゆうちょ銀行（店名）  
        :yucho_bank,
        # 普通/当座 
        :bank_type,
        # 口座番号  
        :account_number,
        :employee_info_id
        )
    end
end
