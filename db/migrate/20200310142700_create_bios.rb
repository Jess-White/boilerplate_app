class CreateBios < ActiveRecord::Migration[6.0]
  def change
    create_table :bios do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.text :bio

      t.timestamps
    end
  end
end
