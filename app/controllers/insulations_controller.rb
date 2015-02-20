class InsulationsController < ApplicationController
  before_action :set_insulation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, except: [:index, :show]
  def search
    if params[:search].present?
      @insulations = Insulation.search(params[:search])
    else
      @insulations = Insulation.all
    end
  end


  def index
    @insulations = Insulation.all
  end

  def show
    
  end

  def new
    @insulation = Insulation.new
  end

  def edit
  end

  def create
    @insulation = Insulation.new(insulation_params)
    @insulation.user_id = current_user.id
    respond_to do |format|
      if @insulation.save
        format.html { redirect_to @insulation, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @insulation }
      else
        format.html { render :new }
        format.json { render json: @insulation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
      if   @insulation.update(insulation_params)
        format.html { redirect_to  @insulation, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @insulation }
      else
        format.html { render :edit }
        format.json { render json:  @insulation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy

     @insulation.destroy
      respond_to do |format|
      format.html { redirect_to @insulation_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_insulation
      @insulation = Insulation.find(params[:id])
    end

    def insulation_params
      params.require(:insulation).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end
