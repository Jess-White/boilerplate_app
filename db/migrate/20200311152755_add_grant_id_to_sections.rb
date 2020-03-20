class AddGrantIdToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :grant_id, :integer
  end
end
