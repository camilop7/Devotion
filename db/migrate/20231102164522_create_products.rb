class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :origin
      t.string :profile
      t.text :notes
      t.text :roasting_comments
      t.references :roaster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
