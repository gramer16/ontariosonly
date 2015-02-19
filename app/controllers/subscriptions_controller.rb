class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  def index
    @subscriptions = Subscription.all
  end

  def show
  end

  def new
    @subscription = Subscription.new
  end

  def edit
  end

  def create
    @subscription = Subscription.new(subscription_params)
    #@plan = Plan.find(params[:name])
    #@subscription.name = @plan.name
    if @subscription.save_with_payment
      redirect_to  @subscription, :notice => "Thank you for subscribing! Our Ontario's Only Team will contact you shortly to request additional information to advertise your Business Profile on our Website"
    else
      render :new
    end
  end

  def update
    @subscription.update(subscription_params)
    redirect_to @subscription, :notice => "Subscription was successfully updated"
  end

  def destroy
    @subscription.destroy
    redirect_to @subscription, :notice => "Subscription was successfully deleted"
  end

  private
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    def subscription_params
      params.require(:subscription).permit(:email, :name, :description, :stripe_card_token, :company_name, :website, :address, :zipcode, :city, :phone, :contact, :company_email, :sellerid, :card_name, :bill_address)
    end
end
