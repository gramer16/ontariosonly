class CustomcabinetsController < ApplicationController
  before_action :set_customcabinet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, except: [:index, :show]
  def search
    if params[:search].present?
     @customcabinets = Customcabinet.search(params[:search])
    else
      @customcabinets = Customcabinet.all
    end
  end

  def autocomplete
    render json: Customcabinet.search(params[:query], fields:[{name: :text_start}], limit: 10).map(&:name)
  end
  

  def index
    @customcabinets = Customcabinet.all
  end

  def show
  end

  def new
    @customcabinet = Customcabinet.new
  end

  def edit
  end

  def create

    @customcabinet = Customcabinet.new(customcabinet_params)
    @customcabinet.user_id = current_user.id
    respond_to do |format|
      if  @flooring.save
        format.html { redirect_to  @customcabinet, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @customcabinet }
      else
        format.html { render :new }
        format.json { render json:  @customcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
     respond_to do |format|
      if  @customcabinet.update(customcabinet_params)
        format.html { redirect_to @customcabinet, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @customcabinet }
      else
        format.html { render :edit }
        format.json { render json:  @customcabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @customcabinet.destroy
      respond_to do |format|
      format.html { redirect_to @customcabinet_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_customcabinet
      @customcabinet = Customcabinet.find(params[:id])
    end

    def customcabinet_params
      params.require(:customcabinet).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end
