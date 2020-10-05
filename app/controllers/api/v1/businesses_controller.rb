class Api::V1::BusinessesController < ApplicationController

  def index
    businesses = Business.all
    render json: BusinessSerializer.new(businesses)
  end

  def create
    business = Business.new(business_params)
    if business.save
      render json: business, status: :accepted
    else
      render json: {errors: business.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :street_address, :city, :state, :zipcode, :description, :website, :category_id)
  end
end
