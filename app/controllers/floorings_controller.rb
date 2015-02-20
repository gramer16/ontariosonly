class FlooringsController < ApplicationController
  before_action :set_flooring, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user, except: [:index, :show]
  def search
    if params[:search].present?
      @floorings = Flooring.search(params[:search])
    else
      @floorings = Flooring.all
    end
  end
  def index
    @floorings = Flooring.all
  end

  def show
  end

  def new
    @flooring = Flooring.new
  end

  def edit
  end

  def create
      @flooring = Flooring.new(flooring_params)
       @flooring.user_id = current_user.id
    respond_to do |format|
      if  @flooring.save
        format.html { redirect_to  @flooring, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location:  @flooring }
      else
        format.html { render :new }
        format.json { render json:  @flooring.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if  @flooring.update(flooring_params)
        format.html { redirect_to @flooring, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location:  @flooring }
      else
        format.html { render :edit }
        format.json { render json:  @flooring.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
      @flooring.destroy
      respond_to do |format|
      format.html { redirect_to @flooring_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_flooring
      @flooring = Flooring.find(params[:id])
    end

    def flooring_params
      params.require(:flooring).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end
    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end
