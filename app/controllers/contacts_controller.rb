class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    id = params[:employee_info_id]
    @contact.employee_info_id = id    
    if @contact.save
      redirect_to employee_infos_path
    else
      redirect_to employee_infos_path
    end     
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact)
      .permit(
        #氏名 
        :name,
        #フリガナ 
        :name_kana,
        #続柄 
        :who_is_this,
        #住　所  
        :address,
        #緊急連絡先  
        :tel,
        :employee_info_id
        )
    end
end
