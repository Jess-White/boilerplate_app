class AddCategoryIdToBoilerplates < ActiveRecord::Migration[6.0]
  def change
    add_column :boilerplates, :category_id, :integer
  end
end
