class Api::V1::BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end
end
