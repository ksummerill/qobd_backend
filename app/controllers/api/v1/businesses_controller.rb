class Api::V1::BusinessesController < ApplicationController
  # skip_before_action :authorized, only: [:index]

  def index
    businesses = Business.all
    render json: BusinessSerializer.new(businesses)
  end

  def create
    # raise params.inspect
    business = Business.new(business_params)
    if business.save
      render json: BusinessSerializer.new(business), status: :accepted
    else
      render json: {errors: business.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def business_params
    # byebug
    params.require(:business).permit(:name, :description, :website, :street_address, :city, :state, :zipcode, :category_id)
  end
end
