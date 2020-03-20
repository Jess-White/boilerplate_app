class CreateBoilerplates < ActiveRecord::Migration[6.0]
  def change
    create_table :boilerplates do |t|
      t.string :name
      t.text :boilerplate_text

      t.timestamps
    end
  end
end
