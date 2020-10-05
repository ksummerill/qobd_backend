class BusinessSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :website, :street_address, :city, :state, :zipcode, :category_id, :category
end
