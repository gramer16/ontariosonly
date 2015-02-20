class MortgagesController < ApplicationController
  before_action :set_mortgage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, except: [:index, :show]
  def search
    if params[:search].present?
      @mortgages = Mortgage.search(params[:search])
    else
      @mortgages = Mortgage.all
    end
  end
  
  

  def index
    @mortgages = Mortgage.all
  end

  def show
  end

  def new
    @mortgage = Mortgage.new
  end

  def edit
  end

  def create
    @mortgage = Mortgage.new(mortgage_params)
    @mortgage.user_id = current_user.id
    respond_to do |format|
      if @mortgage.save
        format.html { redirect_to @mortgage, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @mortgage }
      else
        format.html { render :new }
        format.json { render json: @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @mortgage.update(mortgage_params)
        format.html { redirect_to  @mortgage, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @mortgage }
      else
        format.html { render :edit }
        format.json { render json:  @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @mortgage.destroy
    respond_to do |format|
      format.html { redirect_to @mortgage_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_mortgage
      @mortgage = Mortgage.find(params[:id])
    end

    def mortgage_params
      params.require(:mortgage).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end
