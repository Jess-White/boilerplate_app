class CreateGrants < ActiveRecord::Migration[6.0]
  def change
    create_table :grants do |t|
      t.string :name
      t.string :purpose
      t.string :funding_org
      t.string :funding_org_website
      t.string :funding_org_rfp_webpage
      t.datetime :deadline
      t.datetime :date_submitted

      t.timestamps
    end
  end
end
