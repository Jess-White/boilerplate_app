class AddOrganizationIdToBoilerplates < ActiveRecord::Migration[6.0]
  def change
    add_column :boilerplates, :organization_id, :integer
  end
end
