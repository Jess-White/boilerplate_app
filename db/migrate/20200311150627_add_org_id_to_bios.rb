class AddOrgIdToBios < ActiveRecord::Migration[6.0]
  def change
    add_column :bios, :organization_id, :integer
  end
end
