class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def show

    @offer = Offer.find(params[:id])

  end

  def edit
  end

  def update
    @offer = Offer.edit(offer_params)
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :edit
    end

  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :address)
  end
end
