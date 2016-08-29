class AddTitleToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :category_id, :integer
  end
end
