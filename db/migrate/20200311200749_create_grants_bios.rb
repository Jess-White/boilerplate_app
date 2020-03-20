class CreateGrantsBios < ActiveRecord::Migration[6.0]
  def change
    create_table :grants_bios do |t|
      t.integer :grant_id
      t.integer :bio_id

      t.timestamps
    end
  end
end
