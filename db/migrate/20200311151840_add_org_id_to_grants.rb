class AddOrgIdToGrants < ActiveRecord::Migration[6.0]
  def change
    add_column :grants, :organization_id, :integer
  end
end
