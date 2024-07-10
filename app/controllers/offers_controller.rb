class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @offers = Offer.where("name LIKE ?", "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
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
  end

  def edit
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end

  def update
    @offer.update(offer_params)
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
