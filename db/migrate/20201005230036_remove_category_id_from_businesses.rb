class RemoveCategoryIdFromBusinesses < ActiveRecord::Migration[6.0]
  def change
    remove_column :businesses, :category_id, :integer
  end
end
